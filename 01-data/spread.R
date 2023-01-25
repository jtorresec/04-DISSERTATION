## ----sources.data.spread, include=FALSE, message=FALSE-----------------
source("~/Desktop/04-DISSERTATION/01-data/bacen/data-icc.R")
source("~/Desktop/04-DISSERTATION/14-tables/table-studies.R")
source("~/Desktop/04-DISSERTATION/01-data/bacen/data-spread.R")


## ----diagram.spread.otic, message=FALSE, fig.path = "12-exportedfigures/"----
DiagrammeR::grViz("digraph {
  graph [layout = dot, rankdir = TB]
  node [shape = rectangle]        
  rec1 [label = 'Spread Bancário']
  rec2 [label = 'Evolução']
  rec3 [label = 'Estrutura']
  rec4 [label = 'Determinantes']
  rec5 [label = 'Avaliar o comportamento\n ao longo do tempo']
  rec6 [label = 'Identificar e analisar \ncomponentes de resultado']
  rec7 [label = 'Analisar os efeitos de \nvariáveis ao longo do tempo']
  
  # edge definitions with the node IDs
  rec1 -> rec2
  rec1 -> rec3
  rec1 -> rec4
  rec2 -> rec5
  rec3 -> rec6
  rec4 -> rec7
  }", 
  height = 250, width = 600)


## ----diagram.spread.carac, message=FALSE, fig.path = "12-exportedfigures/"----
DiagrammeR::grViz("digraph {
  graph [layout = dot, rankdir = TB]
  node [shape = rectangle]        
  rec1 [label = 'Spread Bancário']
  rec2 [label = 'Abrangência\n da Amostra']
  rec3 [label = 'Conteúdo']
  rec4 [label = 'Origem\n da Informação']
  rec5 [label = 'Especificidades das\n operações de crédito\n das instituições']
  rec6 [label = 'Subcomponentes de\n Receitas e Despesas']
  rec7 [label = 'Cenários \nEx-ante e Ex-Post']
  
  # edge definitions with the node IDs
  rec1 -> rec2
  rec1 -> rec3
  rec1 -> rec4
  rec2 -> rec5
  rec3 -> rec6
  rec4 -> rec7
  }", 
  height = 200, width = 500)


## ----average spread----------------------------------------------------
spread.1994.2012 <- read.csv('~/Desktop/04-DISSERTATION/01-data/bacen/STI-20200908000010811.csv', sep = ';', dec = ',', encoding = 'UTF-8', stringsAsFactors = FALSE)

colnames(spread.1994.2012) <- c('Data', 'Spread')

date <-seq(from = as.Date("1994-07-01"), to = as.Date("2012-12-01"), by="month")

spread.ev <- transform(spread.1994.2012, 
                       Spread =  as.numeric(Spread))

spread.ev <- separate(spread.ev, Data, into = c('Mês', 'Ano'), sep = '/')

spread.ev <- slice(spread.ev, 1:222)

spread.ev.f <- mutate(spread.ev, Data = date)

s.ev.m <- max(spread.ev.f$Spread)

last.s.em <- spread.ev.f[,3] %>% tail(1)

spread.m.1994.2012 <- ggplot(spread.ev.f, aes(x = Data)) +
  geom_line(aes(y = Spread)) +
  labs(x = '', y = "Spread Médio %") +
  theme_bw()

print(spread.m.1994.2012)


## ----table spreads, echo=FALSE, eval=FALSE, include=FALSE--------------
spread.icc.serie <- c("Spread do ICC - Total",
                      "Spread do ICC - Crédito Direcionado", 
                      "Spread do ICC - Crédito Livre",
                      "Spread do ICC - Pessoas físicas",
                      "Spread do ICC - Pessoas jurídicas",
                      "Spread do ICC - Crédito não rotativo - Total",
                      "Spread do ICC - Crédito Direcionado - Pessoas físicas",
                      "Spread do ICC - Crédito Direcionado - 
                      Pessoas jurídicas",
                      "Spread do ICC - Crédito Livre - Pessoas físicas", 
                      "Spread do ICC - Crédito Livre - Pessoas jurídicas",
                      "Spread do ICC - Crédito não rotativo 
                      - Recursos livres - Pessoas físicas",
                      "Spread do ICC - Crédito não rotativo 
                      - Recursos livres - Pessoas jurídicas",
                      "Spread do ICC - Crédito não rotativo - Recursos livres",
                      "Spread do ICC - Crédito não rotativo - Pessoas físicas",
                      "Spread do ICC - Crédito não rotativo - 
                      Pessoas jurídicas")
                      
                      
spread.moc.series <- c("Spread médio das operações de crédito - Total",
                       "Spread médio das operações de crédito não rotativo 
                       - Total",
                       "Spread médio das operações de crédito com 
                       recursos direcionados - Total",
                       "Spread médio das operações de crédito 
                       com recursos livres - Total",
                       "Spread médio das operações de crédito - 
                       Pessoas físicas - Total",
                       "Spread médio das operações de crédito 
                       - Pessoas jurídicas - Total",
                       "Spread médio das operações de crédito não 
                       rotativo com recursos livres - Pessoas Jurídicas",
                       "Spread médio das operações de crédito não rotativo 
                       com recursos livres - Pess oas Físicas",
                       "Spread médio das operações de crédito não 
                       rotativo com recursos livres - Total",
                       "Spread médio das operações de crédito não 
                       rotativo - Pessoas físicas - Total",
                       "Spread médio das operações de crédito não 
                       rotativo - Pessoas jurídicas - Total",
                       "Spread médio das operações de crédito com recursos
                       direcionados - Pessoas físicas",
                       "Spread médio das operações de crédito com 
                       recursos direcionados - Pessoas jurídicas",
                       "Spread médio das operações de crédito com recursos
                       livres - Pessoas físicas", 
                       "Spread médio das operações de crédito com recursos
                       livres - Pessoas jurídicas")

spread.table <- data.frame("Spread ICC" = spread.icc.serie,
                           "Spread MOC" = spread.moc.series)

spread.table %>% kbl(booktabs = T) %>% 
        kable_styling(latex_options = c("striped"), #, "repeat_header"), 
                      font_size = 10, 
                      full_width = T) %>%  
        column_spec(1, bold = F, width = "7cm") %>% 
        column_spec(2, width = "8cm")


## ----spread 2019 moc---------------------------------------------------
df.spreads.moc <- data.frame(Data = dmy(spread.icc$data),
                         Médio = spread.moct$Spread.MOCT[23:120],
                         Não.Rotativo =
                           spread.moct.nr$Spread.MOCT.NR[23:120],
                         Direcionado = spread.moct.rd$Spread.MOCT.RD[23:120],
                         Livre = spread.moct.rl$Spread.MOCT.RL[23:120],
                         Não.Rotativo.Livre =
                                 spread.moct.nr.rl$Spread.MOCT.NR.RL[23:120])

spreads.moc <- df.spreads.moc %>% 
        gather(Tipo, Valor, 2:6 ) %>% 
        transform(Tipo = as.factor(Tipo)) %>% 
        arrange(Data)

ggplot(spreads.moc, aes(x = Data)) +
        geom_line(aes(y = Valor, color = as.factor(Tipo))) +
        labs(color= NULL, y = 'Spreads %', x = NULL) +
        theme(legend.position = 'bottom')


## ----max spread moc, results='hide', message=FALSE---------------------
smoct.summary <- summary(spread.moct)
moct.max.min <- max(spread.moct$Spread.MOCT) - min(spread.moct$Spread.MOCT)
moct.dif <- max(spread.moct$Spread.MOCT) - 15.49


## ----spread 2019 icc---------------------------------------------------
df.spreads.icc <- data.frame(Data = dmy(spread.icc$data),
                         Médio = spread.icc$Spread.ICC,
                         Direcionado = spread.icc.cd$Spread.ICC.CD,
                         'Crédito Livre' = spread.icc.cl$Spread.ICC.CL,
                         'Não Rotativo'  = spread.icc.cnr$Spread.ICC.CNR,
                         'Não Rotativo Livre' = spread.icc.cnr.rl$Spread.ICC.CNR.RL)

spreads.icc <- df.spreads.icc %>% 
        gather(Tipo, Valor, 2:6) %>% 
        transform(Tipo = as.factor(Tipo)) %>% 
        arrange(Data)

ggplot(spreads.icc, aes(x = Data)) +
        geom_line(aes(y = Valor, color = as.factor(Tipo))) +
        labs(color= NULL, y = 'Spreads ICC %', x = NULL) +
        theme(legend.position = 'bottom')


## ----diagram.spread.dim, message=FALSE, fig.path = "12-exportedfigures/"----
DiagrammeR::grViz("digraph {
  graph [layout = dot, rankdir = TB]
  node [shape = rectangle]        
  rec1 [label = 'Spread Bancário']
  rec2 [label = 'Tomador\n Pessoa Jurídica\n ou Pessoa Física']
  rec3 [label = 'Tipo de Recurso']
  rec4 [label = 'Modalidade']
  rec5 [label = 'Crédito Livre ou\n Crédito Direcionado']
  rec6 [label = 'Não Rotativo ou\n Não Rotativo com\n Recurso Livre']
  
  # edge definitions with the node IDs
  rec1 -> rec2
  rec2 -> rec3
  rec2 -> rec4
  rec3 -> rec5
  rec4 -> rec6
  }", 
  height = 250, width = 600)


## ----ICC---------------------------------------------------------------
max.icc <- max(icc$ICC)

min.icc <- min(icc$ICC)

ggplot(icc, aes(x = dmy(Data))) +
  geom_line(aes(y = ICC)) +
  labs(x = NULL, y = 'ICC %') +
  theme_bw()


## ----studies exante.a, fig.path = "tables", eval=TRUE------------------
studies.ante.a %>% kbl(booktabs = T) %>% 
        kable_styling(latex_options = c("striped", "repeat_header"), 
                      font_size = 10, 
                      full_width = T,
                      ) %>% 
        column_spec(1, bold = T, width = "4cm") %>% 
        column_spec(2, width = "2cm") %>% 
        column_spec(3, width = "2cm") %>% 
        column_spec(4, width = "2cm") %>% 
        column_spec(5, width = "2cm") #%>% 
  #save_kable("12-exportedfigures/studies_extante_a.png")


## ----studies exante.b, message=FALSE, eval=TRUE------------------------
studies.ante.b %>% kbl(booktabs = T) %>% 
        kable_styling(latex_options = c("striped", "repeat_header"), 
                      font_size = 10, full_width = T,
                      ) %>% 
        column_spec(1, bold = F, width = "4cm") %>% 
        column_spec(2, width = "3cm") %>% 
        column_spec(3, width = "3cm") %>% 
        column_spec(4, width = "3cm") #%>% 
  #save_kable("12-exportedfigures/studies_extante_b.png")


## ----studies expost, message=FALSE, eval=TRUE--------------------------
table.expost <- studies.post %>% kbl(booktabs = T) %>% 
        kable_styling(latex_options = c("striped"), 
                      font_size = 10, full_width = T) %>% 
        column_spec(1, bold = T, width = "4cm") %>% 
        column_spec(2, width = "3cm") %>% 
        column_spec(3, width = "3cm") %>% 
        column_spec(4, width = "3cm") #%>% 
  #save_kable("12-exportedfigures/studies_expost.pdf")

