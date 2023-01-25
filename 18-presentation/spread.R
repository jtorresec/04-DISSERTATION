## ----sources.data.spread, include=FALSE, message=FALSE------------------------
source("~/Desktop/04-DISSERTATION/01-data/bacen/data-icc.R")
source("~/Desktop/04-DISSERTATION/14-tables/table-studies.R")
source("~/Desktop/04-DISSERTATION/01-data/bacen/data-spread.R")


## ----diagram.spread.otic, message=FALSE, fig.path = "12-exportedfigures/"-----
DiagrammeR::grViz("digraph boxes_and_circle {
  graph [layout = dot, rankdir = TB, 
  fontname = Helvetica]
  node [shape = rectangle, fontname = Helvetica, fontsize = 10]        
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
  node [shape = rectangle, fontname = Helvetica, fontsize = 10]        
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


## ----average spread, fig.width=5, fig.height=3--------------------------------
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


## ----table.spreads, echo=FALSE, eval=TRUE, include=FALSE----------------------
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


## ----spread.2019.moc,  fig.width=5, fig.height=3------------------------------
n <- length(spread.icc$data) + 22

df.spreads.moc <- data.frame(Data = dmy(spread.icc$data),
                         Médio = spread.moct$Spread.MOCT[23:n],
                         Não.Rotativo =
                           spread.moct.nr$Spread.MOCT.NR[23:n],
                         Direcionado = spread.moct.rd$Spread.MOCT.RD[23:n],
                         Livre = spread.moct.rl$Spread.MOCT.RL[23:n],
                         Não.Rotativo.Livre =
                                 spread.moct.nr.rl$Spread.MOCT.NR.RL[23:n])

spreads.moc <- df.spreads.moc %>% 
        gather(Tipo, Valor, 2:6 ) %>% 
        transform(Tipo = as.factor(Tipo)) %>% 
        arrange(Data)

ggplot(spreads.moc, aes(x = Data)) +
        geom_line(aes(y = Valor, color = as.factor(Tipo))) +
        labs(color= NULL, y = 'Spreads %', x = NULL) +
        theme_minimal() + 
        theme(legend.position = 'bottom')


## ----max spread moc, results='hide', message=FALSE----------------------------
smoct.summary <- summary(spread.moct)
moct.max.min <- max(spread.moct$Spread.MOCT) - min(spread.moct$Spread.MOCT)
moct.dif <- max(spread.moct$Spread.MOCT) - 15.49


## ----spread 2019 icc, fig.width=5, fig.height=3-------------------------------
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
        theme_minimal() +
        theme(legend.position = 'bottom')


## ----max.icc, results='hide', message=FALSE-----------------------------------
max.icc <- max(icc$ICC)

min.icc <- min(icc$ICC)


## ----ICC, fig.width=5, fig.height=3-------------------------------------------

ggplot(icc, aes(x = dmy(Data))) +
  geom_line(aes(y = ICC)) +
  labs(x = NULL, y = 'ICC %') +
  theme_bw()


## ----diagram.spread.dim, message=FALSE, fig.path = "12-exportedfigures/"------
DiagrammeR::grViz("digraph {
  graph [layout = dot, rankdir = TB]
  node [shape = rectangle, fontname = Helvetica, fontsize = 10]        
  rec1 [label = 'Spread Bancário']
  
  node [shape = ellipse]
  rec2 [label = 'Tomador']
  rec5 [label = 'Tipo de Recurso']
  
  node [shape = rectangle] 
  rec3 [label = 'Pessoa Jurídica']
  rec4 [label = 'Pessoa Física']
  
  node [shape = ellipse]
  
  node [shape = rectangle]
  rec6 [label = 'Crédito Livre']
  rec7 [label = 'Crédito Direcionado']
  rec8 [label = 'Não Rotativo']
  rec9 [label = 'Não Rotativo\n com Recurso Livre']
  
  # edge definitions with the node IDs
  rec1 -> {rec2,rec5}; rec2 -> rec3; rec2 -> rec4
  rec5 -> {rec6,rec7, rec8, rec9}; rec3 -> rec5; rec4 -> rec5
  }", 
  height = 250, width = 600)


## ----diagram.spread.vol.tem,ris, message=FALSE, fig.path = "12-exportedfigures/"----
DiagrammeR::grViz("digraph {
  graph [layout = dot, rankdir = TB]
  node [shape = rectangle, fontname = Helvetica, fontsize = 10]        
  rec1 [label = 'Spread Bancário']
  node [shape = ellipse] 
  rec2 [label = 'Volume']
  rec3 [label = 'Tempo']
  rec4 [label = 'Risco']
  rec8 [label = 'Garantia']
  node [shape = rectangle] 
  rec5 [label = 'Referente ao volume\n de recursos captados\n e emprestados']
  rec6 [label = 'O prazo de duração das\n operações de crédito']
  rec7 [label = 'O nível de riscos\n das operações']
  rec9 [label = 'A existência garantias para\n operações']
  
  # edge definitions with the node IDs
  rec1 -> {rec2, rec3, rec4, rec8}
  rec2 -> rec5
  rec3 -> rec6
  rec4 -> rec7
  rec8 -> rec9
  rec4 -> rec8
  }", 
  height = 250, width = 600)


## ----studies exante.a, fig.path = "tables", eval=TRUE-------------------------
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


## ----studies exante.b, message=FALSE, eval=TRUE-------------------------------
studies.ante.b %>% kbl(booktabs = T) %>% 
        kable_styling(latex_options = c("striped", "repeat_header"), 
                      font_size = 10, full_width = T,
                      ) %>% 
        column_spec(1, bold = F, width = "4cm") %>% 
        column_spec(2, width = "3cm") %>% 
        column_spec(3, width = "3cm") %>% 
        column_spec(4, width = "3cm") #%>% 
  #save_kable("12-exportedfigures/studies_extante_b.png")


## ----studies expost, message=FALSE, eval=TRUE---------------------------------
table.expost <- studies.post %>% kbl(booktabs = T) %>% 
        kable_styling(latex_options = c("striped"), 
                      font_size = 10, full_width = T) %>% 
        column_spec(1, bold = T, width = "4cm") %>% 
        column_spec(2, width = "3cm") %>% 
        column_spec(3, width = "3cm") %>% 
        column_spec(4, width = "3cm") #%>% 
  #save_kable("12-exportedfigures/studies_expost.pdf")
table.expost

