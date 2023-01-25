## ----sources.temp, message=FALSE, include=FALSE, eval=FALSE, results='hide', warning=FALSE----
#purl("~/Desktop/04-DISSERTATION/04-method.Rmd", documentation = 1,
#     output = "~/Desktop/04-DISSERTATION/01-data/method.R")
#purl("~/Desktop/04-DISSERTATION/02-bankingstructure.Rmd", documentation = 1,
#     output = "~/Desktop/04-DISSERTATION/01-data/banking.R")
#purl("~/Desktop/04-DISSERTATION/TEMP/03-spread.Rmd", documentation = 1,
#    output = "~/Desktop/04-DISSERTATION/01-data/spread.R")

source("~/Desktop/04-DISSERTATION/01-data/method.R")
source("~/Desktop/04-DISSERTATION/01-data/banking.R")
source("~/Desktop/04-DISSERTATION/01-data/spread.R")


## ----sources.banks, message=FALSE, warning=FALSE, results='hide'--------------
data.bank.location <- "~/Desktop/04-DISSERTATION/17-functions/databank.R"

data.zip <- "~/Desktop/04-DISSERTATION/01-data/bacen/bankdata/ZIP/"
data.csv <- "~/Desktop/04-DISSERTATION/01-data/bacen/bankdata/CSV/"
balance.location <- "~/Desktop/04-DISSERTATION/01-data/bacen/bankdata/"

source(data.bank.location)


## ----data.model, eval=FALSE, include=TRUE, message=FALSE, results='hide'------
banks.data <- readRDS(paste(balance.location, "banks.data.rds", sep = ""),
                      refhook = NULL)

banks.data.tax <- banks.data[118:239]

banksDfTaxJoin <- ldply(banks.data.tax, data.frame)

DfTaxNames <- c('DATA_BASE', "DOCUMENTO", "CNPJ", "AGENCIA",
                "NOME_INSTITUICAO", "COD_CONGL", "NOME_CONGL", 
                "TAXONOMIA", "CONTA", "NOME_CONTA", "SALDO", "DATA")

colnames(banksDfTaxJoin) <- DfTaxNames

banksDfTax <- 
        banksDfTaxJoin[c(-12:-14)] %>%
        filter(DOCUMENTO != "", DOCUMENTO != "DOCUMENTO")  %>% slice(2:n()) %>%
        mutate(DATA = as.yearmon(paste(str_sub(DATA_BASE, start = 1, end = -3),
                            str_sub(DATA_BASE, start = 5), sep = "-"))) %>% 
        type_convert(col_types = cols(DOCUMENTO = col_factor(),
                                      CNPJ = col_factor(),
                                      TAXONOMIA = col_character(),
                                      NOME_INSTITUICAO = col_factor(),
                                      DATA = col_number(),
                                      CONTA = col_factor()),
                     trim_ws = TRUE,
                     locale = locale(decimal_mark = ",")) %>%
        select(-AGENCIA, -COD_CONGL, -NOME_CONGL) %>%
        filter(DOCUMENTO == 4010) %>% 
        na.omit()

banksDfTax$TAXONOMIA[banksDfTax$TAXONOMIA == "BANCO DO BRASIL - BANCO MULTIPLO"] <- "BANCO DO BRASIL"

banksDfTax$TAXONOMIA[banksDfTax$TAXONOMIA == "BANCO NACIONAL DE DESENVOLVIMENTO ECONOMICO SOCIAL"] <- "BNDES"

banksDfTax$TAXONOMIA[banksDfTax$TAXONOMIA == "BANCOS DE CÂMBIO"] <-
  "BANCOS DE CAMBIO"

#######
#banksDfTax$TAXONOMIA[banksDfTax$TAXONOMIA == "BANCO DO BRASIL - BANCO MULTIPLO"] <- "BANCOS MULTIPLOS"

#banksDfTax$TAXONOMIA[banksDfTax$TAXONOMIA == "BANCO NACIONAL DE DESENVOLVIMENTO ECONOMICO SOCIAL"] <- "BANCOS DE DESENVOLVIMENTO"

#banksDfTax$TAXONOMIA[banksDfTax$TAXONOMIA == "BANCOS DE CÂMBIO"] <- "BANCOS DE CAMBIO"
######

banksDfTaxSub <- 
        banksDfTax #%>%  
        #subset(year(DATA) == c(2012:2020)) #| DATA_BASE == 201202 | DATA_BASE == 201203 | DATA_BASE == 201204 | DATA_BASE == 201205 | DATA_BASE == 201206
         #     ) %>%
        #select(DATA, NOME_INSTITUICAO, TAXONOMIA, CONTA, SALDO)
        #subset(NOME_INSTITUICAO == "BCO DO BRASIL S.A." | NOME_INSTITUICAO == "CAIXA ECONOMICA FEDERAL" #| NOME_INSTITUICAO == "BANCO INTERMEDIUM S/A"
          #     )

banksDfSpfill <- banksDfTax %>% expand(DATA, CNPJ, CONTA)

banksDfSp <- banksDfSpfill %>% 
        left_join(banksDfTaxSub) %>%
        select(DATA, CNPJ, NOME_INSTITUICAO, TAXONOMIA, CONTA, SALDO) %>% 
        spread(CONTA, SALDO, fill = 0) %>%
        filter(`16000001` != 0 & `71100001` != 0 & `81100008` !=0 
               & `41000007` != 0 & year(DATA) != 2010 
               #& year(DATA) != 2011
               )
saveRDS(banksDfSp, file = "~/Desktop/04-DISSERTATION/01-data/model/banksDfSp.RDS")

saveRDS(banksDfTax, file = "~/Desktop/04-DISSERTATION/01-data/model/banksDfTax.RDS")



## ----read.DfSp, eval=FALSE, results='hide', message=FALSE---------------------

banksDfTax <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/banksDfTax.RDS")

banksDfSp <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/banksDfSp.RDS")

back.acc <- banksDfSp %>% 
  select(DATA, CNPJ, NOME_INSTITUICAO, `41000007`, `16000001` ) %>% 
  mutate(DATA = DATA + (1/12)) %>% 
  mutate(`41000007 -1` = `41000007`, `16000001 -1` = `16000001` ) %>%
  select(DATA, CNPJ, `41000007 -1`, `16000001 -1`)


## ----data.model.agregates, eval=FALSE, message=FALSE, warning=FALSE, include=FALSE----
#IPCA
ipca_cod <- as.character(data.table[5,3])
ipca <- ipeadata(code = ipca_cod, language = c('br'))

ipcaDt <- ipca %>% 
        mutate(DATA = as.yearmon(date) + 0.2, 
                  IPCA = value / 100) %>% select(DATA, IPCA) 

selic.copom <- ipeadata(code = 'BM366_TJOVER366', language = "br") 
selicMeta <- selic.copom %>% 
        mutate(DATA = as.yearmon(date) + 0, 
               SelMet = value / 100) %>%
        group_by(DATA) %>% 
        summarise(SelMet = mean(SelMet)) %>% 
        select(DATA, SelMet)

selic_cod <- as.character(data.table[3,3])
selic <- ipeadata(code = selic_cod, language = "br")
selicDt <- selic %>% 
        mutate(DATA = as.yearmon(date) + 0.2, SelOvr = value / 100) %>% 
        select(DATA, SelOvr)

Mpa4Dt <- m2m3m4.data %>% 
        mutate(DATA = as.yearmon(Data) + 0.2) %>%
        mutate(MPA4 = (M4 * 1000) / 1) %>% 
        select(DATA, MPA4)

Mpa2Dt <- m2m3m4.data %>% 
        mutate(DATA = as.yearmon(Data) + 0.2) %>%
        mutate(MPA2 = (M2 * 1000) / 1) %>% 
        select(DATA, MPA2)

TitPub <- money.base.comps %>% 
  select(Data, Titulos.Públicos.Totais) %>% 
  filter(Titulos.Públicos.Totais != "-") %>% 
  mutate(DATA = as.yearmon(Data),
         TitPub = as.numeric(as.character(Titulos.Públicos.Totais))) %>% 
  select(DATA, TitPub)

PIB_cod <- as.character(data.table[2,3])
PIB <- ipeadata(code = PIB_cod, language = "br")

PIBDt <- PIB %>% 
        mutate(DATA = as.yearmon(date) + 0.2, 
               PIB = (value * 1000000) / 1) %>% 
        select(DATA, PIB)

BMa_cod <- as.character(data.table[9,3]) 
Bma <- money.base %>% 
        transform(DATA = as.yearmon(Data) + 0.2) %>%
        filter(Base.Monetária.Ampliada != "-") %>%
        slice(7:n()) %>% 
        transform(BMA = (as.numeric(as.character(Base.Monetária.Ampliada)) *
                          1000) / 1) %>% 
        select(DATA, BMA)

Bmr <- money.base %>%  
        transform(DATA = as.yearmon(Data) + 0.2) %>%
        slice(7:n()) %>% 
        transform(BMR = (as.numeric(as.character(Base.Monetária)) *
                          1000) / 1) %>% 
        select(DATA, BMR)

dc.local <- "~/Desktop/04-DISSERTATION/01-data/bacen/compulsory/STP-20210312091217949.xlsx"

DepCom  <-  
        read_xlsx(dc.local, sheet = "STP-20210312091217949", 
                  col_types = c("date", "numeric", "numeric", 
                                "numeric", "numeric"),
                  trim_ws = TRUE)

DepComDt <- DepCom %>% 
  transform(DATA = as.yearmon(DATA),
            (COMP_TOTAL = COMPULSORIO_TOTAL * 1000 / 1)
            ) %>% 
        select(DATA, COMPULSORIO_TOTAL) 

SprEa <- spread.moct %>% 
  separate(data, sep = "/",
           into = c("DIA", "MES", "ANO")) %>%
  mutate(DATA = as.yearmon(paste(ANO, MES, sep = "-")) + 0) %>%
  mutate(SprEa = Spread.MOCT / 100) %>%
  select(DATA, SprEa)


## ----market.total, eval=FALSE, message=FALSE, results='hide'------------------

OpCrT <- banksDfSp %>% group_by(DATA) %>% 
        summarize(OpCrTotal = sum(`16000001`) +  sum(`18000009`))

NInst <- banksDfTax %>% group_by(DATA) %>% 
        summarise(NUM_INSTITUICOES = length(unique(NOME_INSTITUICAO)))

RcTotal <- banksDfSp %>% group_by(DATA) %>% 
        summarise(RECEITA_TOTAL = sum(`71000008`))

GCSum <- banksDfSp %>% 
        inner_join(NInst, by = "DATA") %>%
        inner_join(OpCrT, by = "DATA") %>% 
        group_by(DATA) %>%
        summarise(GCSum = sum(((`16000001` / OpCrTotal) -
                                         (1 / NUM_INSTITUICOES)) ^ 2)
        )

GC <- GCSum %>% 
        inner_join(NInst, by = "DATA") %>%
        group_by(DATA) %>%
        summarise(GrCon = (1 / NUM_INSTITUICOES) + 
                          (NUM_INSTITUICOES * (GCSum / NUM_INSTITUICOES)) )

# PERCENTUAL DE PROVISÃO OBRIGATÓRIO DE ACORDO COM O RISCO DE CRÉDITO
ra <- 0.005 ; rb <- 0.01 ; rc <- 0.03; rd <- 0.10; re <- 0.30; rf <- 0.5; rg <- 0.7; rh <- 1



## ----pure.panel, message=FALSE, eval=FALSE------------------------------------

purePanel <- banksDfSp %>%
        left_join(back.acc) %>% 
        inner_join(OpCrT, by = "DATA") %>%
        inner_join(NInst, by = "DATA") %>%
        inner_join(RcTotal, by = "DATA") %>%
        inner_join(GC, by = "DATA") %>%
        inner_join(selicDt, by = "DATA") %>%
        left_join(selicMeta, by = "DATA") %>%
        inner_join(ipcaDt, by = "DATA") %>%
        inner_join(Mpa2Dt, by = "DATA") %>%
        inner_join(Mpa4Dt, by = "DATA") %>%
        inner_join(DepComDt, by = "DATA") %>%
        inner_join(PIBDt, by = "DATA") %>%
        inner_join(SprEa, by = "DATA") %>%
        inner_join(Bmr, by = "DATA") %>%
        inner_join(Bma, by = "DATA") %>%
        left_join(TitPub, by = "DATA") %>%
        mutate(OSprEp = ( (`71100001`)  / 
                             ( (1/2)*(`16000001` + `16000001 -1`))) -
                       ((`81100008`*-1) / ((1/2)*(`41000007`+`41000007 -1`)) )
                                               ) %>%
        mutate(SprEp = (`71000008` / ( (1/2)*(`16000001` + `18000009`))) -
                       ((`81100008`*-1) / ((1/2)*(`41000007`+`41000007`)) )
                                               ) %>%
        mutate(TxApl = (`71000008` / ( (1)*(`16000001` + `18000009`))) ) %>%
        mutate(TxCap = ( (`81100008`*-1) / ((1/2)*(`41000007`+`41000007`)) )) %>%
        mutate(TpIns = as.factor(TAXONOMIA)) %>% 
        mutate(BANCO = as.factor(NOME_INSTITUICAO)) %>%
        mutate(lnOpCrMkt =  log(OpCrTotal / 1)   ) %>%
        mutate(lnMPA2 = log((MPA2)/1)) %>%
        mutate(lnMPA4 = log((MPA4)/1)) %>%
        mutate(lnBMR = log((BMR)/1)) %>%
        mutate(lnBMA = log((BMA)/1)) %>%
        mutate(OpCr = (((`16000001` + (`16900008` * -1))) / 1) ) %>%
        mutate(OtCr = (((`18000009` + (`18900006` * -1)))/ 1)) %>%
        mutate(OpTot = (  (  (`16000001` + (`16900008` * -1)  ) + 
                     (`18000009` + (`18900006` * -1) )  ) /1  )  ) %>%  
        mutate(lnOpTot = log(  (  (`16000001` + (`16900008` * -1)  ) + 
                     (`18000009` + (`18900006` * -1) )  ) /1  )  ) %>%
        mutate(OpEmp = log(`16100004` / (1))) %>% 
        mutate(OpFin = log((`16200007`+ `16300000` + `16400003`) / (1)) ) %>% 
        mutate(OtOp = log((`16800005` + `18000009`) / (1)) ) %>% 
        mutate(Inad = ( ( (`16900008` + `18900006`) * -1) / (1)) )%>%
        mutate(Disp = ((`11000006`) / 1)) %>% 
        mutate(Atv = log(`39999993` / 1)  ) %>%
        mutate(lnAtv = log(Atv / 1)  ) %>% 
        mutate(RcPd = (((`31100003` * ra) +
                              (`31200006` * ra) + (`31300009` * rb) +
                              (`31400002` * rc) + (`31500005` * rd) +
                              (`31600008` * re) + (`31700001` * rf) +
                              (`31800004` * rg) + (`31900007` * rh) /
                              (ra + ra + rb + rc + rd + re + rf + rg + rh)) /
                              (`16000001`) ) * 1  ) %>%
        mutate(RcCr = (`31000000`/1) ) %>%
        mutate(MkSh = ( ((`16000001` + `18000009`)  / OpCrTotal) * 1) ) %>%
        mutate(lnComp = log(COMPULSORIO_TOTAL) / 1) %>%
        mutate(Comp = ((COMPULSORIO_TOTAL) / OpCrTotal)  )  %>%
        mutate(VelMo =  (  (  (PIB * 1) * (1 - IPCA) ) / 
                                   (BMA * 1)  )   
               ) %>%

        mutate(Cx = (`11100009`) / 1) %>%
        mutate(ROp = ((`71000008`/1)) ) %>% # receitas operacionais      
        mutate(lnROp = (ROp / 1)  ) %>% # receitas operacionais
        mutate(ROpCr = ((`71100001` / 1) / 1)  ) %>% # receitas operações de crédito 
        mutate(RSrv = ((`71700009` / 1) / 1)  ) %>% # receitas serviços 
        mutate(RPart = ((`71800002` / 1) / 1)  ) %>% # receitas participações 
        mutate(OtROp = ((  (`71000008` - 
                       (`71100001` + `71700009` + `71700009` 
                        + `71800002`) 
                                ) / 1 )  / 1) ) %>% 
        mutate(Inv = ((`21000003`) / 1 )  ) %>%
        mutate(ImpInd = ((`49100002` / (1)))  ) %>% 
        mutate(ImpRend = ( (`89400009` * -1) / (1) ) ) %>%
        mutate(DepTot = (`41000007` / 1 )) %>%
        mutate(lnDepTot = log(DepTot / 1 )) %>%
        mutate(DepAv = (`41100000` / (1)) ) %>% 
        mutate(DepPop = (`41200003` / (1) )  ) %>% 
        mutate(DepIf = (`41300006` / (1)) ) %>% 
        mutate(DepAp = (`41500002` / (1)) ) %>% 
        mutate(OtDep = (`41000007`- `41100000` - `41200003` - `41300006` -
                       `41500002`) / (1)) %>%
        mutate(EPr = (((`16000001` + `18000009` ) - DepTot) / (1))
               ) %>%
        mutate(DesOp = log((`81000005` * -1) / 1 )) %>% 
        mutate(DesCap = log((`81100008` * -1) / 1) ) %>% 
        mutate(DAdm = log((`81700006` * -1) / ( 1 ) ) ) %>%
        mutate(OtDes = log(  (  (`81000005` * -1) - 
                       (`81100008` * -1) - (`81700006`* -1 ) ) 
                       / ( 1 ) ) 
               ) %>%
        mutate(PrtLc = ((`89700008` * -1) / 1)  ) %>%
        mutate(PtLq = (`61000001` / 1) ) %>% 
        mutate(Rent = (`89000007` / ROp) * 1) %>%
        mutate(ROA = (`89000007` / Atv) * 1) %>%
        mutate(ROE = (`89000007` / PtLq) * 1) %>%      
        mutate(Int = (`25000009` / 1 ) ) %>% 
        subset(TpIns != "BANCOS COMERCIAIS COOPERATIVOS"  
               & TpIns != "BANCOS MULTIPLOS COOPERATIVOS"
               & TpIns != "BANCOS COMERCIAIS ESTRAGEIROS - FILIAL PAIS"
               & year(DATA) != 2021
               #& SprEp > -0.10 & SprEp < 0.56
               )  %>% 
        na.omit() %>%
        as_tibble()

saveRDS(purePanel, file = "~/Desktop/04-DISSERTATION/01-data/model/purePanel.RDS")


## ----banks.model, message=FALSE, eval=FALSE-----------------------------------

banksPanel <- banksDfSp %>%
        left_join(back.acc) %>% 
        inner_join(OpCrT, by = "DATA") %>%
        inner_join(NInst, by = "DATA") %>%
        inner_join(RcTotal, by = "DATA") %>%
        inner_join(GC, by = "DATA") %>%
        inner_join(selicDt, by = "DATA") %>%
        left_join(selicMeta, by = "DATA") %>%
        inner_join(ipcaDt, by = "DATA") %>%
        inner_join(Mpa2Dt, by = "DATA") %>%
        inner_join(Mpa4Dt, by = "DATA") %>%
        inner_join(DepComDt, by = "DATA") %>%
        inner_join(PIBDt, by = "DATA") %>%
        inner_join(SprEa, by = "DATA") %>%
        inner_join(Bmr, by = "DATA") %>%
        inner_join(Bma, by = "DATA") %>%
        left_join(TitPub, by = "DATA") %>%
        mutate(OSprEp = ( (`71100001`)  / 
                             ( (1/2)*(`16000001` + `16000001 -1`))) -
                       ((`81100008`*-1) / ((1/2)*(`41000007`+`41000007 -1`)) )
                                               ) %>%
        mutate(SprEp = (`71000008` / ( (1/2)*(`16000001` + `18000009`))) -
                       ((`81100008`*-1) / ((1/2)*(`41000007`+`41000007`)) )
                                               ) %>%
        mutate(TxApl = (`71000008` / ( (1/2)*(`16000001` + `18000009`))) ) %>%
        mutate(TxCap = ( (`81100008`*-1) / 
                           (( 1/2 )*(`41000007`+`41000007`)) )) %>%
        mutate(TpIns = as.factor(TAXONOMIA)) %>% 
        mutate(BANCO = as.factor(NOME_INSTITUICAO)) %>%
        mutate(lnOpCrMkt =  log(OpCrTotal / 1)   ) %>%
        mutate(lnMPA2 = log((MPA2)/1)) %>%
        mutate(lnMPA4 = log((MPA4)/1)) %>%
        mutate(lnBMR = log(BMR)/1) %>%
        mutate(lnBMA = log(BMA)/1) %>%
        mutate(OpCr = ((`16000001` + (`16900008` * -1))) / 1) %>%
        mutate(OtCr = ((`18000009` + (`18900006` * -1)))/ 1) %>%
        mutate(OpTot = (  (  (`16000001` + (`16900008` * -1)  ) + 
                     (`18000009` + (`18900006` * -1) )  ) /1  )  ) %>%
        mutate(lnOpTot = log(  (  (`16000001` + (`16900008` * -1)  ) + 
                     (`18000009` + (`18900006` * -1) )  ) /1  )  ) %>%
        mutate(OpEmp = `16100004` / (OpCr + OtCr)) %>% 
        mutate(OpFin = (`16200007`+ `16300000` + `16400003`) 
               / (OpCr + OtCr) ) %>% 
        mutate(OtOp = (`16800005` + `18000009`) / (OpCr + OtCr) ) %>% 
        mutate(Inad = ( ( (`16900008` + `18900006`) * -1) / (OpCr + OtCr))) %>%
        mutate(Disp = (`11000006`) / OpTot) %>% 
        mutate(Atv = (`39999993` / 1)  ) %>%
        mutate(lnAtv = log(Atv / 1)  ) %>% 
        mutate(RcPd = (  (  (`31100003` * ra) +
                              (`31200006` * ra) + (`31300009` * rb) +
                              (`31400002` * rc) + (`31500005` * rd) +
                              (`31600008` * re) + (`31700001` * rf) +
                              (`31800004` * rg) + (`31900007` * rh) /
                              (ra + ra + rb + rc + rd + re + rf + rg + rh) ) /
                              ( OpTot ) ) * 1  ) %>%
        mutate(RcCr = (`31000000`/ OpTot)) %>%
        mutate(lnRcCr = (RcCr) ) %>%
        mutate(MkSh = ( ((`16000001` + `18000009`)  / OpCrTotal) * 1) ) %>%
        mutate(lnComp = log(COMPULSORIO_TOTAL) / 1) %>%
        mutate(Comp = ((COMPULSORIO_TOTAL) / OpCrTotal)  )  %>%      
        mutate(VelMo =  (  (  (PIB * 1) * (1 - IPCA) ) / 
                                   (BMA * 1)  )   ) %>%

        mutate(Cx = (`11100009`) / OpTot) %>%
        mutate(ROp = (`71000008`/1)) %>% # receitas operacionais
        mutate(lnROp = log(ROp / 1)  ) %>% # operacionais      
        mutate(ROpCr = ((`71100001` / 1) / ROp)) %>% #  crédito 
        mutate(RSrv = ((`71700009` / 1) / ROp)) %>% # serviços 
        mutate(RPart = ((`71800002` / 1) / ROp)) %>% #  participações 
        mutate(OtROp = (  (`71000008` - 
                       (`71100001` + `71700009` + `71700009` 
                        + `71800002`) 
                                ) / 1 )  / ROp ) %>% 
        mutate(Rent = (`89000007` / ROp) * 1) %>%
        mutate(ROA = (`89000007` / Atv ) * 1) %>%
        mutate(Inv = (`21000003`) / `39999993` ) %>%
        mutate(ImpInd = (`49100002` / ROp)) %>% 
        mutate(ImpRend = ( (`89400009` * -1) / ROp) ) %>%
        mutate(DepTot = (`41000007`)) %>% 
        mutate(lnDepTot = log(`41000007`)) %>% 
        mutate(DepAv = (`41100000` / (DepTot))) %>% 
        mutate(DepPop = (`41200003` / (DepTot))) %>% 
        mutate(DepIf = (`41300006` / (DepTot))) %>% 
        mutate(DepAp = (`41500002` / (DepTot))) %>% 
        mutate(OtDep = (`41000007`- `41100000` - `41200003` - `41300006` -
                       `41500002`) / (DepTot)) %>%
        mutate(EPr = (((`16000001` + `18000009` ) - DepTot) / (OpCr + OtCr))
               ) %>%
        mutate(DesOp = (`81000005` * -1) / 1) %>% 
        mutate(DesCap = (`81100008` * -1) / DepTot) %>% 
        mutate(DAdm = ((`81700006` * -1) / ( OpTot ) )) %>%
        mutate(OtDes = (  (  (`81000005` * -1) - 
                       (`81100008` * -1) - (`81700006`* -1 )) 
                       / ( OpTot ) ) 
               ) %>%
        mutate(PrtLc = ((`89700008` * -1) / 1)  ) %>%
        mutate(PtLq = `61000001` / 1) %>% 
        mutate(ROE = (`89000007` / PtLq ) * 1) %>%      
        mutate(Int = (`25000009` / `39999993`)) %>% 
        subset(TpIns != "BANCOS COMERCIAIS COOPERATIVOS"  
               & TpIns != "BANCOS MULTIPLOS COOPERATIVOS"
               & TpIns != "BANCOS COMERCIAIS ESTRAGEIROS - FILIAL PAIS"
               & year(DATA) != 2021
               )  %>% 
        na.omit() %>%
        as_tibble()

saveRDS(banksPanel, file = "~/Desktop/04-DISSERTATION/01-data/model/banksPanel.RDS")


## ----read.panel, eval=TRUE, results='hide', message=FALSE---------------------
banksPanel <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/banksPanel.RDS")

purePanel <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/purePanel.RDS")


## ----summary.data.pure, eval=FALSE, results='hide', message=FALSE-------------

banksColsP <- purePanel %>% select(-DATA, -BANCO, -TAXONOMIA, -CNPJ, -NOME_INSTITUICAO, -TpIns) %>% colnames()

banksColsOrP <- banksColsP[1:204]

qDAdmP <- quantile(purePanel$DAdm, probs=c(.25, .75), na.rm = FALSE)
iqrDAdmP <- IQR(purePanel$DAdm)

upDAdmP <- qDAdmP[2] + (iqrDAdmP * 1.5)
lowDAdmP <- qDAdmP[1] - (iqrDAdmP * 1.5)

qInadP <- quantile(purePanel$Inad, probs=c(.25, .75), na.rm = FALSE)
iqrInadP <- IQR(purePanel$Inad)

upInadP <- qInadP[2] + (iqrInadP * 1.5)
lowInadP <- qInadP[1] - (iqrInadP * 1.5)

qOtDesP <- quantile(purePanel$OtDes, probs = c(.25, .75), na.rm = FALSE)
iqrOtDesP <- IQR(purePanel$OtDes)

upOtDesP <- qOtDesP[2] + (iqrOtDesP * 1.5)
lowOtDesP <- qOtDesP[1] - (iqrOtDesP * 1.5)

qRcPdP <- quantile(purePanel$RcPd, probs = c(.25, .75), na.rm = FALSE)
iqrRcPdP <- IQR(purePanel$RcPd)

upRcPdP <- qRcPdP[2] + (iqrRcPdP * 1.5)
lowRcPdP <- qRcPdP[1] - (iqrRcPdP * 1.5)

qSprEpP <- quantile(purePanel$SprEp, probs = c(.25, .75), na.rm = FALSE)
iqrSprEpP <- IQR(purePanel$SprEp)

upSprEpP <- qSprEpP[2] + (iqrSprEpP * 1.5)
lowSprEpP <- qSprEpP[1] - (iqrSprEpP * 1.5)

qDesCapP <- quantile(purePanel$DesCap, probs = c(.25, .75), na.rm = FALSE)
iqrDesCapP <- IQR(purePanel$DesCap)

upDesCapP <- qDesCapP[2] + (iqrDesCapP * 1.5)
lowDesCapP <- qDesCapP[1] - (iqrDesCapP * 1.5)

obs.banksP <- purePanel %>% 
  group_by(BANCO) %>% 
  summarise(OBS = sum(length(BANCO))) %>% select(BANCO, OBS)

purePanel.00 <- purePanel %>% 
  select(-all_of(banksColsOrP)) %>% 
  left_join(obs.banksP, by = "BANCO") %>% 
  subset(DAdm < upDAdmP
         #& SprEp > lowSprEp & SprEp < upSprEp
         #&Inad <= upInad 
         #& RcPd <= upRcPd
         & DesCap > lowDesCapP & DesCap < upDesCapP
         & OtDes <= upOtDesP)

saveRDS(purePanel.00, file = "~/Desktop/04-DISSERTATION/01-data/model/purePanel.00.RDS")

fitP <- lm(SprEp ~ DAdm + DesCap + GrCon + OtDes
          + Inad 
          + RcPd 
          + Int + EPr
          + lnComp + ImpInd + ImpRend
          + DepAv + DepAp + DepPop 
          + OpFin + OpEmp + OtOp 
          + ROpCr + RSrv + RPart
          + SelMet + VelMo,
          data = purePanel.00)


cooksdP <- cooks.distance(fitP)

sample_sizeP <- nrow(purePanel.00)

influentialP <- as.numeric(names(cooksdP)[(cooksdP > (4/sample_sizeP))])

purePanel.00 <- purePanel.00[-influentialP, ]

saveRDS(purePanel.00, file = "~/Desktop/04-DISSERTATION/01-data/model/purePanel.00.RDS")





## ----summary.data, eval=FALSE-------------------------------------------------

banksCols <- banksPanel %>% select(-DATA, -BANCO, -TAXONOMIA, -CNPJ, -NOME_INSTITUICAO, -TpIns) %>% colnames()

banksColsOr <- banksCols[1:204]

qDAdm <- quantile(banksPanel$DAdm, probs=c(.25, .75), na.rm = FALSE)
iqrDAdm <- IQR(banksPanel$DAdm)

upDAdm <- qDAdm[2] + (iqrDAdm * 1.5)
lowDAdm <- qDAdm[1] - (iqrDAdm * 1.5)

qInad <- quantile(banksPanel$Inad, probs=c(.25, .75), na.rm = FALSE)
iqrInad <- IQR(banksPanel$Inad)

upInad <- qInad[2] + (iqrInad * 1.5)
lowInad <- qInad[1] - (iqrInad * 1.5)

qOtDes <- quantile(banksPanel$OtDes, probs = c(.25, .75), na.rm = FALSE)
iqrOtDes <- IQR(banksPanel$OtDes)

upOtDes <- qOtDes[2] + (iqrOtDes * 1.5)
lowOtDes <- qOtDes[1] - (iqrOtDes * 1.5)

qRcPd <- quantile(banksPanel$RcPd, probs = c(.25, .75), na.rm = FALSE)
iqrRcPd <- IQR(banksPanel$RcPd)

upRcPd <- qRcPd[2] + (iqrRcPd * 1.5)
lowRcPd <- qRcPd[1] - (iqrRcPd * 1.5)

qSprEp <- quantile(banksPanel$SprEp, probs = c(.25, .75), na.rm = FALSE)
iqrSprEp <- IQR(banksPanel$SprEp)

upSprEp <- qSprEp[2] + (iqrSprEp * 1.5)
lowSprEp <- qSprEp[1] - (iqrSprEp * 1.5)

qDesCap <- quantile(banksPanel$DesCap, probs = c(.25, .75), na.rm = FALSE)
iqrDesCap <- IQR(banksPanel$DesCap)

upDesCap <- qDesCap[2] + (iqrDesCap * 1.5)
lowDesCap <- qDesCap[1] - (iqrDesCap * 1.5)

obs.banks <- banksPanel %>% 
  group_by(BANCO) %>% 
  summarise(OBS = sum(length(BANCO))) %>% select(BANCO, OBS)

banksPanel.00 <- banksPanel %>% 
  select(-all_of(banksColsOr)) %>% 
  left_join(obs.banks, by = "BANCO") %>% 
  subset(DAdm < upDAdm
         #& SprEp > lowSprEp & SprEp < upSprEp
         #&Inad <= upInad 
         #& RcPd <= upRcPd
         & DesCap > lowDesCap & DesCap < upDesCap
         & OtDes <= upOtDes)

#outliers <- boxplot(banksPanel.00$SprEp, plot=FALSE)$out

#banksPanel.00 <- banksPanel.00[-which(banksPanel.00$SprEp %in% outliers), ]



saveRDS(banksPanel.00, file = "~/Desktop/04-DISSERTATION/01-data/model/banksPanel.00.RDS")



## ----read.panel.00, eval=TRUE, results='hide'---------------------------------
banksPanel.00 <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/banksPanel.00.RDS")


## ----lm.model, results='hide', eval=FALSE-------------------------------------
library(car)
fit <- lm(SprEp ~ DAdm + DesCap + GrCon + OtDes
          + Inad 
          + RcPd 
          + Int + EPr
          + lnComp + ImpInd + ImpRend
          + DepAv + DepAp + DepPop 
          + OpFin + OpEmp + OtOp 
          + ROpCr + RSrv + RPart
          + SelMet + VelMo,
          data = banksPanel.00)

fit %>% summary()
vif(fit) > 5


## ----remove.outliers, results='hide', eval=FALSE------------------------------
cooksd <- cooks.distance(fit)

sample_size <- nrow(banksPanel.00)
#plot(cooksd, pch="*", cex=2, main="Influential Obs by Cooks distance") %>%  # plot cook's distance
#abline(h = 4/sample_size, col="red")  %>% # add cutoff line
#text(x=1:length(cooksd)+1, y=cooksd, labels=ifelse(cooksd>4/sample_size, names(cooksd),""), col="red")  # add labels


## ----remove.influence, eval=FALSE, message=FALSE, results='hide'--------------

# Removing Outliers
# influential row numbers
influential <- as.numeric(names(cooksd)[(cooksd > (4/sample_size))])

# Alternatively, you can try to remove the top x outliers to have a look
# top_x_outlier <- 2
# influential <- as.numeric(names(sort(cooksd, decreasing = TRUE)[1:top_x_outlier]))

banksPanel.01 <- banksPanel.00[-influential, ]

saveRDS(banksPanel.01, file = "~/Desktop/04-DISSERTATION/01-data/model/banksPanel.01.RDS")



## ----read.panel.01, eval=TRUE, results='hide', message=FALSE------------------
banksPanel.01 <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/banksPanel.01.RDS")


## ----pvargmm.dynamic, eval=FALSE, message=FALSE, results='hide'---------------
#detach(package:splines, unload = TRUE)

Id_Data <- banksPanel.01 %>% group_by(DATA) %>% summarise(Id_Data = 1:length(unique(DATA))) %>% mutate(Id_Data = row_number())

Id_Banks <- banksPanel.01 %>% group_by(BANCO) %>% summarise(Id_Banco = 1:length(unique(BANCO))) %>% mutate(Id_Banco = row_number())

Id_TpIns <- banksPanel.01 %>% group_by(TpIns) %>% summarise(Id_TpIns = 1:length(unique(TpIns))) %>% mutate(Id_TpIns = row_number()) 

obs.panel <- banksPanel.01 %>% 
  group_by(BANCO) %>% 
  summarise(OBS.B = sum(length(BANCO))) %>% select(BANCO, OBS.B)

model.pvrgmm <- 
        banksPanel.01 %>%
        left_join(Id_Data, by = "DATA") %>% 
        left_join(Id_Banks, by = "BANCO") %>% 
        left_join(Id_TpIns, by = "TpIns") %>%
        left_join(obs.panel, by = "BANCO") %>%
        #mutate(DAdm = (DAdm * OpTot) ) %>% 
        #mutate(OtDes = (OtDes * OpTot) ) %>% 
        #mutate(DesCap = (DesCap * DepTot) ) %>%
        mutate(DepAv = (DepAv * DepTot) / OpTot ) %>% 
        mutate(DepAp = (DepAp * DepTot) / OpTot ) %>%
        mutate(DepIf = (DepIf * DepTot) / OpTot ) %>%
        mutate(DepPop = (DepPop * DepTot) / OpTot ) %>%
        mutate(OtDep = (OtDep * DepTot) / OpTot ) %>%
        mutate(ROpCr = (ROpCr * ROp) / OpTot ) %>%
        mutate(RSrv = (RSrv * ROp) / OpTot ) %>%
        mutate(RPart = (RPart * ROp) / OpTot ) %>%
        mutate(OtROp = (OtROp * ROp) / OpTot ) %>%
        mutate(exSprEp = exp(SprEp)) %>%
  
        #mutate(OpEmp = log(OpEmp * OpTot) ) %>%
        #mutate(OpFin = log(OpFin * OpTot) ) %>%
        #mutate(OtOp = log(OtOp * OpTot) ) %>%
        #mutate(SprEp = exp(SprEp)) %>%
        #mutate(Rent = exp(Rent)) %>% 
        #mutate(Inad = (Inad * OpTot) ) %>%
        #subset(OBS.B > 100) %>% 
        mutate(DATA = as.factor(DATA)) %>%
        #mutate(Id_TpIns = as.factor(Id_TpIns)) %>%
        na.omit() %>%
        select("DATA", "SprEp", "TxApl", "TxCap", "BANCO", "Rent", "DAdm",
               "DesCap", "OtDes", "Inad", "RcPd", "Int", "EPr", "DepAv",
               "DepAp", "DepPop", "ROpCr", "RSrv", "RPart", "OpEmp", "OpFin",
               "OtOp",  "ImpInd", "ImpRend",  "SelOvr", "VelMo", "Comp",
               "GrCon", "Id_Banco", "Id_Data", "Id_TpIns", "OSprEp", 
               "IPCA", "lnBMR", "lnOpCrMkt", "SelOvr", "lnMPA2", "lnComp",
               "lnOpTot", "lnAtv", "lnROp", "SelMet", "lnBMA", "OtROp",
               "DepIf", "OtDep", "lnDepTot", "OpTot", "OBS", "SprEa", 'TpIns',
               "ROA", "ROE", "exSprEp", "lnMPA4" #, "OtROp", "TitPub", 
          ) %>% 
        as.data.frame()

saveRDS(model.pvrgmm, file = "~/Desktop/04-DISSERTATION/01-data/model/model.pvrgmm.RDS")



## ----model.pvar.gmm-----------------------------------------------------------
model.pvrgmm <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/model.pvrgmm.RDS")


#cols <- pure.panel %>% select(-DATA, -BANCO, -TAXONOMIA, -CNPJ, -NOME_INSTITUICAO, -TpIns) %>% colnames()

#cols <- cols[1:202]
#endo <- cols

depVar <- c(
            "SprEp",
            #"SprEa",
            #"exSprEp",
            #"TxApl",
            #"TxCap",
            "Rent"
            )

endo <- c(
          "DAdm", "DesCap", "OtDes",
          "Inad", "RcPd",
          "EPr", "DepAv", "DepAp", "DepPop", #"DepIf", #"OtDep",
          #"lnOpTot", "lnROp"#"lnDepTot", #"lnAtv",
          "ROpCr", "RSrv", "RPart", "OtROp",
          "OpEmp", "OpFin", "OtOp",
          "ImpInd", "ImpRend"
          )

exo <- c(
          "SelOvr",
          "VelMo",
          "Comp",
          "GrCon",
          "IPCA",
          "lnMPA4",
          "lnOpCrMkt"#,
          #"SprEa"
         )



## ----model.pvar.pmm.f, eval=FALSE, message=FALSE, results='hide'--------------
fit.pvargmm <-  
        pvargmm(dependent_vars = depVar,
                lags = 2,
                predet_vars = endo,
                exog_vars = exo,
                transformation = "fod",
                data = model.pvrgmm,
                panel_identifier = c("BANCO", "DATA"),
                steps = c(
                          #"onestep"
                          "twostep"
                          ),
                system_instruments = TRUE, # HABILITADO FALSE
                system_constant = FALSE, # DESABILITADO  TRUE
                pca_instruments = TRUE, # DESABILITADO FALSE
                pca_eigenvalue = 1, #DESABILITADO = 1
                max_instr_dependent_vars = 99,
                max_instr_predet_vars = 99,
                min_instr_dependent_vars = 2L,
                min_instr_predet_vars = 1L,
                collapse = TRUE,
                #tol = 1e-09,
                progressbar = TRUE
 )
  
sumPvarGmm <- summary(fit.pvargmm)

saveRDS(fit.pvargmm.tx.2,  file = "~/Desktop/04-DISSERTATION/01-data/model/fit.pvargmm.tx.2.RDS")

saveRDS(sumPvarGmm.tx.2,  file = "~/Desktop/04-DISSERTATION/01-data/model/sumPvarGmm.tx.2.RDS")


## ----read.pvargmm-------------------------------------------------------------

#fit.pvargmm <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/fit.pvargmm.mpa4.RDS")

# <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/sumPvarGmm.mpa4.RDS")

#fit.pvargmm <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/fit.pvargmm.f.RDS")

#sumPvarGmm <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/sumPvarGmm.f.RDS")

fit.pvargmm.1.lags <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/fit.pvargmm.1.lags.RDS")

fit.pvargmm.2.lags <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/fit.pvargmm.2.lags.RDS")

fit.pvargmm.3.lags <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/fit.pvargmm.3.lags.RDS")

fit.pvargmm.4.lags <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/fit.pvargmm.4.lags.RDS")

sumPvarGmm.1.lags <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/sumPvarGmm.1.lags.RDS")

sumPvarGmm.2.lags <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/sumPvarGmm.2.lags.RDS")

sumPvarGmm.3.lags <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/sumPvarGmm.3.lags.RDS")

sumPvarGmm.4.lags <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/sumPvarGmm.4.lags.RDS")



## ----statistics.01------------------------------------------------------------
mod01Obs <- data.frame(TEMPO = length(unique(model.pvrgmm$DATA)),
           OBSERVAÇÕES = length(model.pvrgmm$SprEp),
           INSTITUICÕES = length(unique(model.pvrgmm$BANCO)),
           "VARIÁVEIS EXPLICATIVAS" = length(c(endo,exo))
           ) 

mod01nObs <- mod01Obs$OBSERVAÇÕES
mo01nTemp <- mod01Obs$TEMPO
mo01nIns <- mod01Obs$INSTITUICÕES


## ----statistics.table---------------------------------------------------------
mod01Obs %>% kbl(booktabs = T) %>% 
  kable_styling(latex_options = c("striped"),
                font_size = 10, full_width = T)


## ----base.test.andrews, eval=FALSE, message=FALSE, results='hide'-------------
al.01 <- Andrews_Lu_MMSC(fit.pvargmm.1.lags, HQ_criterion = 2.1)
al.02 <- Andrews_Lu_MMSC(fit.pvargmm.2.lags, HQ_criterion = 2.1)
al.03 <- Andrews_Lu_MMSC(fit.pvargmm.3.lags, HQ_criterion = 2.1)
al.04 <- Andrews_Lu_MMSC(fit.pvargmm.4.lags, HQ_criterion = 2.1)

al <- cbind(al.01,al.02, al.03, al.04)

saveRDS(al, file = "~/Desktop/04-DISSERTATION/01-data/model/al.RDS")


## ----test.andrews-------------------------------------------------------------

al <-  readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/al.RDS")

al %>% as.data.frame() %>% 
  rename(Lag.01 = al.01, Lag.02 = al.02, Lag.03 = al.03, Lag.04 = al.04) %>%  
  kbl(booktabs = TRUE) %>% 
  kable_styling(latex_options = "striped", 
                full_width = T, font_size = 10)


## ----table.pvargmm, eval=FALSE, results='hide', message=FALSE-----------------
sumPvarGmm.2.lags


## ----hansen.test, eval=TRUE---------------------------------------------------

# H0: restrições de superidentificação são válidas
# A hipótese nula do teste implica que todos os instrumentos são válidos
#O valor de p maior que 5% (0,05) implica, aceitamos o Ho, ou seja, todos os instrumentos são válidos.

hansen_j_test(fit.pvargmm.2.lags) %>% as.data.frame() %>% 
  rename(Estatística = statistic, 
         Valor.P = p.value,
         Parâmetros = parameter,
         Instrumentos = nof_instruments,
         Método = method) %>%  
  kbl(booktabs = TRUE) %>%
  kable_styling(latex_options = "striped", full_width = TRUE)


## ----stability----------------------------------------------------------------
st.pvar.gmm <- stability(fit.pvargmm.2.lags)


## ----stability.plot-----------------------------------------------------------
plot(st.pvar.gmm)


## ----test.othog, eval=FALSE, results='hide', include=FALSE--------------------
fevd <- fevd_orthogonal(fit.pvargmm.2.lags)



## ----tests.pvargmm, eval=FALSE, results='hide', include=FALSE-----------------
###tests

oirf <- oirf(fit.pvargmm.2.lags, n.ahead = 8)

#girf <- girf(fit.pvargmm.2.lags, n.ahead = 8, ma_approx_steps = 8)

bs.oirf <-
  bootstrap_irf(
    model = fit.pvargmm.2.lags,
    typeof_irf = c("OIRF"),
    n.ahead = 8,
    nof_Nstar_draws = 8,
    confidence.band = 0.95
)

#bs.girf <-
#  bootstrap_irf(
#    model = fit.pvargmm.2.lags,
#    typeof_irf = c("GIRF"),
#    n.ahead = 8,
#    nof_Nstar_draws = 8,
#    confidence.band = 0.95
#)
  
saveRDS(oirf, file = "~/Desktop/04-DISSERTATION/01-data/model/oirf.RDS")
#saveRDS(girf, file = "~/Desktop/04-DISSERTATION/01-data/model/girf.RDS")


saveRDS(bs.oirf, file = "~/Desktop/04-DISSERTATION/01-data/model/bs.oirf.RDS")
#saveRDS(bs.girf, file = "~/Desktop/04-DISSERTATION/01-data/model/bs.girf.RDS")



## ----impulse.plot.orto--------------------------------------------------------

oirf <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/oirf.RDS")

bs.oirf <- readRDS(file = "~/Desktop/04-DISSERTATION/01-data/model/bs.oirf.RDS")

plot(oirf, bs.oirf)


