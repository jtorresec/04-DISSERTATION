## ---- eval=FALSE, results='hide', echo=FALSE----------------------------------
e <- 1000
iadm <- 0.02
ind <- 0.01
icap <- 0.05
ifg <- 0.001
ics <- 0.09
ir <- 0.25
r <- 0.23
icomp <- 0.01
ill <- 0.1
ip <- 0.0165
ico <- 0.076

rec <- e*((iadm + ind + ((icap + ifg*(1) - (r*icomp))*(1/(1-r-ifg))))) / (1 - (ill / (1-ir*(1)- ics*(1))) - ip*(1) - ico*(1))


recbrut <- rec - iadm*e - ind*e - (icap / (1 - r - ifg)) * e - (ifg / (1 - r - ifg)) * e - ip * rec - ico * rec + (r*icomp)*(1/(1-r-ifg)) * e

cat("o capital emprestado é: ", e,
    "A necessidade de captação é: ", e/(1-r - ifg),
    "Custos: ", e*((iadm + ind + ((icap + ifg - (r*icomp))*(1/(1-r-ifg))))),
    "Multiplicador: ", 1 / (1 - (ill / (1-ir- ics)) - ip - ico),
    "A receita é: ", rec,
    "Despesa Administrativas são: ", iadm*e,
    "inadimplência é: ", ind*e,
    "Custo Captação: ", ((icap / (1 - r - ifg)) * e),
    "Fundo Garantidor: ", (ifg / (1 - r - ifg)) * e,
    "A receita bruta é: ", recbrut,
    "CSLL: ", ics * (recbrut),
    "IRPJ: ", ir * (recbrut),
    "Lucro Líquido: ", recbrut - (ics * recbrut) - (ir * recbrut),
    "Margem bruta: ", paste(round(recbrut/rec*100,2),"%", sep = ""),
    "Margem Líquida: ", paste(round((recbrut - (ics * (recbrut)) - (ir * (recbrut)))/ rec * 100,2),"%",sep = ""),
    "Taxa de Aplicação:  ", ((((e + rec) / e) - 1) * 100),
    "Taxa de Captação: ", (((icap + ifg) / (1 - r - ifg)) * (e)) / (e/(1-r - ifg)) * 100,
    "Spread:", ((((e + rec) / e) - 1) * 100) - (((icap + ifg) / (1 - r - ifg)) * (e)) / (e/(1-r - ifg)) * 100
)


## ---- echo=FALSE, results='hide', eval=FALSE----------------------------------
RAa <- 0
RA <- 0.005
RB <- 0.01
RC <- 0.03
RD <- 0.10
RE <- 0.30
RF <- 0.50
RG <- 0.70
RH <- 1

(1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9)
(RAa + RA + RB + RC + RD + RE + RF + RG + RH)
(1*RAa + 2*RA + 3* RB + 4*RC + 5*RD + 6*RE + 7*RF + 8*RG + 9*RH)

(1*RAa + 2*RA + 3* RB + 4*RC + 5*RD + 6*RE + 7*RF + 8*RG + 9*RH) / (RAa + RA + RB + RC + RD + RE + RF + RG + RH) / 45


## ----table of data, message=FALSE, eval=TRUE----------------------------------
data.source <- list(
    "Demonstrações Financeiras" = list(
        Descrição = "Balancetes (IFs e Conglomerados)",
        Identificação = "370",
        Periodicidade = "Mensal",
        Fonte = "Banco Central"
    ),
    "PIB" = list(
        Descrição = "O Produto Interno Bruto (PIB) denominado como PIB mensal é um indicador com frequência mensal produzido pelo Banco Central do Brasil (BCB) ",
        Identificação = "BM12_PIB12",
        Periodicidade = "Mensal",
        Fonte = "IPEA"
    ),
    "Selic Over" = list(
        Descrição = "Taxa de juros apurada nas operações de empréstimos de um dia entre as instituições financeiras que utilizam títulos públicos federais como garantia",
        Identificação = "BM12_TJOVER12",
        Periodicidade = "Mensal",
        Fonte = "Banco Central"
    ),
    "Meios de Pagamentos" = list(
        Descrição = "Meio de Pagamento - Ampliado - M4 - fim de período",
        Identificação = "BM12_M4NCN12",
        Periodicidade = "Mensal",
        Fonte = "IPEA"
    ),
     "IPCA" = list(
        Descrição = "IPCA Geral",
        Identificação = "PRECOS12_IPCAG12",
        Periodicidade = "Mensal",
        Fonte = "IPEA"
    ),
    "Compulsório Poupança" = list(
        Descrição = "Depósitos de poupança em espécie (remunerados)",
        Identificação = "1848",
        Periodicidade = "Mensal",
        Fonte = "Banco Central"
    ),
    "Compulsório a vista" = list(
        Descrição = "Recursos a vista em espécie (não remunerados)",
        Identificação = "1849",
        Periodicidade = "Mensal",
        Fonte = "Banco Central"
    ),
    "Compulsório a prazo" = list(
        Descrição = "Depósitos a prazo em espécie (remunerados)",
        Identificação = "1850",
        Periodicidade = "Mensal",
        Fonte = "Banco Central"
    ),
    "Base Monetária Ampliada" = list(
        Descrição = "Base Monetária Ampliada (saldo em final de período)",
        Identificação = "1833",
        Periodicidade = "Mensal",
        Fonte = "Banco Central"
    )
)
data.table <-  ldply(data.source, data.frame, .id = "Nome")
data.table %>% 
    kbl(booktabs = T) %>% 
        kable_styling(latex_options = c("striped",
                                        "repeat_header"
                                        ), 
                      font_size = 10, full_width = T,
                      ) %>% 
        column_spec(1, bold = T, width = "3cm") %>% 
        column_spec(2, width = "5cm") %>% 
        column_spec(3, width = "3cm") %>% 
        column_spec(4, width = "2cm") %>% 
        column_spec(5, width = "2cm") #%>% 
    #save_kable("~/Desktop/04-DISSERTATION/12-exportedfigures/data.table.png")

