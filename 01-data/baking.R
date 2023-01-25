## ----instituicoes financeiras, message=FALSE, results='hide'------------
#conflict_prefer("mutate", "plyr")
ifb <- read_xlsx(path = '~/desktop/04-DISSERTATION/01-data/bacen/Quadros 2019.xlsx',
                      sheet = 'quadro 1',
                      col_names = FALSE)

df.banks <- data.frame(slice(ifb[9:14,]))

df.banks[2,1] <- 'Banco Comercial' 

df.banks[4,1] <- 'Caixas Econômicas'

y.df <- ifb[7,]

m.df <- ifb[8,]

ym.df <- paste(y.df, m.df, sep = '_')

colnames(df.banks) <- c('Segmento', 'Sigla', ym.df[3:160])

em.banks  <- 
        df.banks %>% 
        gather(Ano, Quantidade, starts_with(c('19','20'))) %>% 
        separate(Ano, into = c('Ano', 'Mês'), sep = '_') %>% 
        transform(Quantidade = as.integer(Quantidade),
                  Segmento = as.factor(Segmento)) %>% 
        mutate(Período = paste(Mês, Ano, sep = ' '))

write_csv(em.banks, paste(data.csv,"em.banks.csv", sep = ''))


## ----banks origin, results='hide'---------------------------------------
ifoc <- read_xlsx("~/desktop/04-DISSERTATION/01-data/bacen/Quadros 2019.xlsx", 
                     sheet = 'Quadro 3 ', 
                     col_names = FALSE)

df.o.banks <- data.frame(Tipo = c('Público','Privado', 'Privado', 
                                     'Privado', 'Privado', 'Privado'), 
                         slice(ifoc[9:14,]))

df.o.banks[1,2] <- 'Públicos'

df.o.banks[4:6,2] <-  str_sub(df.o.banks[4:6,2], end = -3)

str_sub(df.o.banks$Ano[111:121], end = -3)

df.o.banks <- slice(df.o.banks[-2,])

o.year <- ifoc[7,]

o.month <- ifoc[8,]

o.ym <- paste(o.year, o.month, sep = '_')

colnames(df.o.banks) <- c('Caráter', 'Capital', o.ym[2:31])

o.banks <- 
        df.o.banks %>% 
        gather(Ano, Quantidade, starts_with(c('19', '20'))) %>% 
        separate(Ano, into = c('Ano', 'Mês'), sep = '_') %>% 
        transform(Quantidade = as.integer(Quantidade),
                  Tipo = as.factor(Caráter),
                  Capital = as.factor(Capital)) %>% 
        mutate(Período = paste(Mês, Ano, sep = ' '))

o.banks$Ano[111:120] <- str_sub(o.banks$Ano[111:120], end = -3)
write_csv(o.banks, paste(data.csv,"o.banks.csv", sep = ''))


## ----table origin-------------------------------------------------------
o.banks.2019 <- 
        o.banks %>%
        select(Caráter, Quantidade, Ano) %>% 
        filter(Ano == '2019') %>%
        group_by(Caráter) %>% 
        summarise(Quantidade = sum(Quantidade)) %>% 
        mutate(Participação = scales::percent(Quantidade / sum(Quantidade))) %>%
        select(Caráter, Participação)

write_csv(o.banks.2019, paste(data.csv , "o.banks.2019.csv"))

kbl(o.banks.2019, booktabs = T) %>% 
        kable_styling(latex_options = c("striped"), #"scale_down"),
                      font_size = 10, full_width = T) %>% 
        column_spec(1, width = "8cm") %>% 
        column_spec(2, width = "7cm")


## ----resume banks-------------------------------------------------------
table.banks <- 
        em.banks %>% 
        filter(Ano == '2019', Mês == 'Dez') %>% 
        select(c(- Período, - Mês)) %>%
        mutate(Participação =  Quantidade / sum(Quantidade),
               Participação = scales::percent(Participação)) %>% 
       arrange(desc(Quantidade)) %>% 
        select(Segmento, Quantidade, Participação)
total.banks.2019 <- sum(table.banks$Quantidade)

write_csv(table.banks, paste(data.csv, "table.banks.csv", sep = ""))

kbl(table.banks, booktabs = T) %>% 
        kable_styling(latex_options = c("striped"), #"scale_down"),
                      font_size = 10, full_width = T) %>% 
        column_spec(1, width = "5cm") %>% 
        column_spec(2, width = "4cm") %>% 
        column_spec(3, width = "5cm")


## ----bank evolution, message=FALSE, fig.width= 5, fig.height=3----------
ev.banks <- 
        em.banks %>% 
        transform(Ano = as.integer(Ano)) %>%
        filter(Mês == 'Dez') %>% 
        select(Segmento, Ano, Quantidade)
        #slice(127:252)

write_csv(ev.banks, paste(data.csv, "ev.banks.csv", sep = ""))

g.banks <-  ggplot(ev.banks, aes(x = Ano)) +
                geom_line(aes(y = Quantidade, color = as.factor(Segmento))) +
        facet_wrap(~Segmento) +
         theme_minimal() +
        theme(legend.position = 'none',
              axis.text.x = element_text(size = 7)) +
        labs(x = NULL, y = NULL)

print(g.banks)


## ----concetration-------------------------------------------------------
con.banks <- 
        em.banks %>%
        transform(Ano = as.integer(Ano)) %>% 
        filter(Mês == 'Dez') %>%
        group_by(Ano) %>% 
        summarise(Quantidade = sum(Quantidade))

write_csv(con.banks, paste(data.csv, "con.banks", sep = ""))

g.con.banks <- 
        ggplot(con.banks, aes(x = Ano)) +
        geom_line(aes(y = Quantidade)) +
        theme_bw()

print(g.con.banks)


## ----capital.banks.a----------------------------------------------------
c.banks <- 
        o.banks %>% 
        filter(Ano == '2019') %>% 
        select(Capital,Quantidade) %>% 
        mutate(Participação = 
                       scales::percent(Quantidade / sum(Quantidade))) %>%
        arrange(desc(Quantidade))

write_csv(c.banks, paste(data.csv, "c.cbanks.cv", sep = ""))

kbl(c.banks, booktabs = T) %>% 
        kable_styling(latex_options = c("striped"), #"scale_down"),
                      font_size = 10, full_width = T) #%>% 
        #column_spec(1, width = "6cm")


## ----capital graphic----------------------------------------------------
ev.o.banks <- 
        o.banks %>% 
        select(Capital, Ano, Quantidade) %>% 
        transform(Ano = as.integer(Ano))

write_csv(ev.o.banks, paste(data.csv, 'ev.o.banks.csv', sep = ''))

o.g.banks <- 
        ggplot(ev.o.banks, aes(x = Ano)) +
                geom_line(aes(y = Quantidade, color = Capital)) +
        #facet_wrap(~Capital) +
        labs(x = NULL, y = "Quantidade", color = NULL) +
        guides(guide_legend(nrow = 2, byrow = TRUE)) +
        theme_bw() +
        theme(legend.position = 'bottom', 
              legend.text = element_text(size = 5),
              legend.margin = margin(1, 1, 1, 1),
              legend.title = element_text(NULL))

print(o.g.banks)


## ----credit gdp data----------------------------------------------------
credit.gdb <- read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20622/dados?formato=csv', sep = ';', dec = ",", encoding = 'UTF-8')

credit.gdb <- transform(credit.gdb, Data = dmy(data))

write_csv(credit.gdb, paste(data.csv, "credit.gdb.csv", sep = ""))

max.credit.gdp <- max(credit.gdb$valor)


## ----credit gdp---------------------------------------------------------
ggplot(credit.gdb, aes(x = Data)) +
        geom_line(aes(y = valor)) +
        labs(y = 'Crédito/PIB %', x = NULL) +
        theme_bw()


## ----balance credit-----------------------------------------------------
balance.credit <- read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20539/dados?formato=csv', sep = ';', dec = ',', col.names = c('data', 'Saldo.Crédito'))

balance.credit.d <- read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20593/dados?formato=csv', sep = ';', dec = ',', col.names = c('data', 'Saldo.Crédito.Direcionado'))

balance.credit.l <- read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20542/dados?formato=csv', sep = ';', dec = ',', col.names = c('data', 'Saldo.Crédito.Livre'))

b.credit.dl <- join(balance.credit.d, balance.credit.l) %>% 
        gather(Serie, Valor, 2:3)

b.credit <- balance.credit %>% 
        filter(Saldo.Crédito != 0) %>% 
        slice(1:360)

write_csv(b.credit.dl, paste(data.csv, 'b.credit.dl', sep = ''))
write_csv(b.credit, paste(data.csv, 'b.credit.csv', sep = ''))

balance <- ggplot(b.credit, aes(x = dmy(data))) +
        geom_line(aes(y = Saldo.Crédito)) +
        labs(x = NULL, y = "R$ Milhões") +
        scale_y_continuous(labels = scales::dollar) +
        theme_classic()

print(balance)


## ----money base.d-------------------------------------------------------
money.file <- "~/Desktop/04-DISSERTATION/01-data/bacen/moneybase/STP-20210214163332355.xlsx"

money.base <- read.xlsx(money.file, sheetName = "STP-20210214163332355")

money.base.plot <- 
        money.base %>%
        transform(Data = as.yearmon(Data)) %>%
        filter(Base.Monetária.Ampliada != "-") %>%
        slice(7:n()) %>% 
        transform(Base.Monetária = 
                          as.numeric(as.character(Base.Monetária)) * 
                          1000 / 1000000000000) %>% 
        transform(Base.Monetária.Ampliada =
                          as.numeric(as.character(Base.Monetária.Ampliada)) *
                          1000 / 1000000000000) %>% 
        gather(Tipo, Valor, 2:3)
        
ggplot(money.base.plot, aes(x = Data)) +
        geom_line(aes(y = Valor, color = as.factor(Tipo))) +
        labs(y = "Trilhões R$ Correntes", x = NULL, color = NULL) +
        scale_y_continuous(labels = scales::dollar) +
        theme_bw() +
        theme(panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              panel.background = element_blank(), 
              axis.line = element_line(colour = "black"),
              legend.position = "bottom",
              #legend.title = element_text(NULL)
              legend.title = 
                      element_text(color = 'black', size = 10), 
              legend.text = 
                      element_text(colour = 'black', size = 10))


## ----money.comps.file, eval=TRUE, message=FALSE, results='hide'---------
base.comps <- "~/Desktop/04-DISSERTATION/01-data/bacen/moneybase/STP-20210214202647612.xlsx"

money.base.comps <- read.xlsx(base.comps, sheetName = "STP-20210214202647612")


## ----base moneybase.e, message=FALSE, fig.width=5, fig.height=2---------
money.comps.e <- 
        money.base.comps %>% 
        transform(Data = as.yearmon(Data)) %>% 
        filter(Depósitos.compulsórios != "-" , 
               Titulos.Públicos.Totais != "-") %>%
        transform(Papel.Moeda.Emitido = 
                          Papel.Moeda.Emitido * 1000 / 1000000000,
                  Reservas.Bancárias = 
                          Reservas.Bancárias * 1000 / 1000000000,
                  Depósitos.compulsórios = 
                          as.numeric(as.character(Depósitos.compulsórios)) 
                  * 1000 / 1000000000,
                  Titulos.Públicos.Totais = 
                          as.numeric(as.character(Titulos.Públicos.Totais)) 
                  * 1000 / 1000000000) %>% 
        select(Data, Papel.Moeda.Emitido, Reservas.Bancárias) %>%
        gather(Tipo, Valor, 2:3)


write_csv(money.comps.e, paste(data.csv, 'money.comps.e.csv', sep = ''))

ggplot(money.comps.e, aes(x = Data)) +
        geom_line(aes(y = Valor, color = as.factor(Tipo))) +
        facet_wrap(~Tipo) +
        theme_bw() +
        labs(color = NULL, x = NULL, y = "bilhões R$ Correntes") + 
        theme(legend.position = 'none', 
              legend.text = element_text(size = 8),
              legend.margin = margin(-5, 6, 6, 6),
              legend.title = element_text(NULL),
              axis.text.x = element_text(size = 5))


## ----base components, message=FALSE, fig.width=5, fig.height=2----------
money.comps.d <- 
        money.base.comps %>% 
        transform(Data = as.yearmon(Data)) %>% 
        filter(Depósitos.compulsórios != "-" , 
               Titulos.Públicos.Totais != "-") %>%
        transform(Papel.Moeda.Emitido = 
                          Papel.Moeda.Emitido * 1000 / 1000000000,
                  Reservas.Bancárias = 
                          Reservas.Bancárias * 1000 / 1000000000,
                  Depósitos.compulsórios = 
                          as.numeric(as.character(Depósitos.compulsórios)) 
                  * 1000 / 1000000000,
                  Titulos.Públicos.Totais = 
                          as.numeric(as.character(Titulos.Públicos.Totais)) 
                  * 1000 / 1000000000) %>% 
        select(Data, Depósitos.compulsórios, Titulos.Públicos.Totais) %>%
        gather(Tipo, Valor, 2:3)

write_csv(money.comps.d, paste(data.csv, 'money.comps.d.csv', sep = ''))

ggplot(money.comps.d, aes(x =  Data)) +
        geom_line(aes(y = Valor, color = as.factor(Tipo))) +
        facet_wrap(~Tipo) +
        theme_bw() +
        labs(color = NULL, x = NULL, y = "bilhões R$ Correntes") + 
        theme(legend.position = 'none', 
              legend.text = element_text(size = 8),
              legend.margin = margin(-5, 6, 6, 6),
              legend.title = element_text(NULL),
              axis.text.x = element_text(size = 5))


## ----m1-----------------------------------------------------------------
m1.file <- "~/Desktop/04-DISSERTATION/01-data/bacen/moneybase/STP-20210215111647290.xlsx"
m1.data <- read.xlsx(m1.file, sheetName = "STP-20210215111647290")

m1.df <- m1.data %>% 
        transform(Data = as.yearmon(Data)) %>%
        transform(Papel.Moeda.em.poder.do.público = 
                         Papel.Moeda.em.poder.do.público * 1000 / 1000000000,
                  Depósitos.à.Vista = 
                          Depósitos.à.Vista * 1000 / 1000000000,
                  Meios.de.pagamento...M1 = 
                          Meios.de.pagamento...M1 * 1000 / 1000000000) %>% 
        #select(Data, Depósitos.à.Vista) %>% 
        gather(Série, Valor, 2:3)

write_csv(m1.df, paste(m1.file, 'm1.df.csv', sep = ''))

ggplot(m1.df, aes(x = Data)) +
        geom_line(aes(y = Valor, colour = as.factor(Série))) +
        theme_bw() +
        theme(legend.position = "bottom") + 
        labs(color = NULL, x = NULL, y = "bilhões R$ Correntes")


## ----m2m3m4-------------------------------------------------------------
m2m3m4.file <- "~/Desktop/04-DISSERTATION/01-data/bacen/moneybase/STP-20210215151624501.xlsx"
m2m3m4.data <- read.xlsx(m2m3m4.file, sheetName = "STP-20210215151624501")

m2m3m4.df <- m2m3m4.data %>% 
        transform(Data = as.yearmon(Data)) %>%
        mutate(M1 = m1.data$Meios.de.pagamento...M1) %>% 
        transform(M1 = M1 * 1000 / 1000000000,
                  M2 = M2 * 1000 / 1000000000,
                  M3 = M3 * 1000 / 1000000000,
                  M4 = M4 * 1000 / 1000000000) %>%
        #select(Data, Depósitos.à.Vista) %>% 
        gather(Série, Valor, 2:5)

write_csv(m2m3m4.df, paste(data.csv, 'm2m3m4.df.csv', sep = ''))

mp.plot <- ggplot(m2m3m4.df, aes(x = Data)) +
        geom_line(aes(y = Valor, colour = as.factor(Série))) +
        theme_bw() +
        theme(legend.position = "bottom") + 
        labs(color = NULL, x = NULL, y = "bilhões R$ Correntes")
print(mp.plot)


## ----table accounting---------------------------------------------------
accounting.docs <- list(
        "Balancete" = list(
                Tipo = "Analítico",
                Códigos = "4010, 4020, 4413, 4433",
                Periodicidade = "Mensal ou Trimestral"
        ),
        "Balancete" = list(
                Tipo = "Analítico Consolidado",
                Códigos = "4040",
                Periodicidade = "Mensal ou Trimestral"
        ),
        "Balancete" = list(
                Tipo = "Analítico - Conglomerado Prudencial",
                Códigos = "4060",
                Periodicidade = "Mensal ou Trimestral"
        ),
        "Balanço" = list(
                Tipo = "Analítico",
                Códigos = "4016, 4026",
                Periodicidade = "Semestral"
        ),
        "Balanço" = list(
                Tipo = "Analítico Consolidado",
                Códigos = "4046",
                Periodicidade = "Semestral"
        ),
        "Balanço" = list(
                Tipo = "Analítico - Conglomerado Prudencial",
                Códigos = "4066",
                Periodicidade = "Semestral"
        )
)

accounting.docs <- ldply(accounting.docs, data.frame, .id = "Documento")

write_csv(accounting.docs, paste(data.csv, 'accounting.docs.csv', sep = ''))

kbl(accounting.docs, booktabs = T) %>% 
        kable_styling(latex_options = c("striped"), #"repeat_header"), 
                      font_size = 10, full_width = T)

