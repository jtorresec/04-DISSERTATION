--- 
date: 2021
author: "Jackson da Silva Torres"
documentclass: abntex2
classoption: [12pt, openright, oneside, a4paper, chapter=TITLE, section=TITLE, subsection=TITLE, subsubsection=TITLE, english, french, spanish, portugues, sumario=tradicional]
header-includes:
- \input{09-packages/00-pacotes}
- \input{00-input/00-dados}
- \makeindex
- \usepackage{helvet}
- \renewcommand{\familydefault}{\sfdefault}
- \DeclareUnicodeCharacter{0301}{******}
- \DeclareUnicodeCharacter{0303}{******}
- \DeclareUnicodeCharacter{0327}{******}
#- \usepackage{amsmath}
site: bookdown::bookdown_site
#bibliography: '10-references/referencias.bib'
#biblio-style: abnt
biblio-title: \hspace{45pt}{REFERÊNCIAS}
suppress_bibliography: true
link-citations: no
toc: false
references: false
always_allow_html: true
fontsize: 12pt
mathjax: true
---









<!--chapter:end:index.Rmd-->

\chapter{Apresentação e análise dos resultados}















Em análise preliminar no conjunto de dados, levando em consideração as variáveis calculadas percebeu-se que a fórmula para *spread ex-post* apresentada por \textcite{dantas:2012} e \textcite{timotio:2018} não é adequada para avaliar o mercado bancário como um todo, diante o fato de haver diferenças operacionais e operação de múltiplas carteiras. 

A \autoref{table.spread.a} mostra o resultado do cálculo do *spread ex-post* conforme equação \textcolor{red}{xxxxxx}, levando em consideração as receitas de crédito, operações de crédito, custo de captação e depósitos totais, com resultados que não refletem todas as operações exercidas pelas instituições.   

\begin{table}
\caption{Cálculo Spread Ex-post com base nas Receitas de operações de crédito}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> year(DATA) </th>
   <th style="text-align:right;"> SPREAD </th>
   <th style="text-align:right;"> Tx.Aplicação </th>
   <th style="text-align:right;"> Tx.Captação </th>
   <th style="text-align:right;"> DATA </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2011 </td>
   <td style="text-align:right;"> 1.7224447 </td>
   <td style="text-align:right;"> 6.126370 </td>
   <td style="text-align:right;"> 4.403925 </td>
   <td style="text-align:right;"> 2011 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2012 </td>
   <td style="text-align:right;"> 1.4256950 </td>
   <td style="text-align:right;"> 5.065581 </td>
   <td style="text-align:right;"> 3.639886 </td>
   <td style="text-align:right;"> 2012 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2013 </td>
   <td style="text-align:right;"> 0.9068716 </td>
   <td style="text-align:right;"> 4.553858 </td>
   <td style="text-align:right;"> 3.646986 </td>
   <td style="text-align:right;"> 2013 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2014 </td>
   <td style="text-align:right;"> -0.3469018 </td>
   <td style="text-align:right;"> 4.674218 </td>
   <td style="text-align:right;"> 5.021120 </td>
   <td style="text-align:right;"> 2014 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2015 </td>
   <td style="text-align:right;"> -0.4112076 </td>
   <td style="text-align:right;"> 5.328828 </td>
   <td style="text-align:right;"> 5.740035 </td>
   <td style="text-align:right;"> 2015 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2016 </td>
   <td style="text-align:right;"> -1.2718303 </td>
   <td style="text-align:right;"> 4.997764 </td>
   <td style="text-align:right;"> 6.269595 </td>
   <td style="text-align:right;"> 2016 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2017 </td>
   <td style="text-align:right;"> -0.3032622 </td>
   <td style="text-align:right;"> 4.611052 </td>
   <td style="text-align:right;"> 4.914314 </td>
   <td style="text-align:right;"> 2017 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2018 </td>
   <td style="text-align:right;"> 1.2279495 </td>
   <td style="text-align:right;"> 4.343456 </td>
   <td style="text-align:right;"> 3.115506 </td>
   <td style="text-align:right;"> 2018 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2019 </td>
   <td style="text-align:right;"> 1.3502961 </td>
   <td style="text-align:right;"> 4.310835 </td>
   <td style="text-align:right;"> 2.960539 </td>
   <td style="text-align:right;"> 2019 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2020 </td>
   <td style="text-align:right;"> 2.1606633 </td>
   <td style="text-align:right;"> 3.691604 </td>
   <td style="text-align:right;"> 1.530941 </td>
   <td style="text-align:right;"> 2020 </td>
  </tr>
</tbody>
</table>
\label{table.spread.a}
\fonte{Densenvolvido a partir dos dados coletados}
\end{table}


Diante esta observação foi realizado um cálculo para o *spread ex-post*, de tal modo que captasse as diferenças entre modalidades bancárias e operações das instituições, levando em consideração todas as receitas operacionais e as operações de crédito e outros créditos chegando ao resultado médio anual demonstrado na \autoref{table.spread.b}.

\begin{table}
\caption{Cálculo Spread Ex-post com base nas Receitas de operações de créditoCálculo Spread Ex-post com base na operações totais}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> DATA </th>
   <th style="text-align:right;"> SPREAD </th>
   <th style="text-align:right;"> Tx.Aplicação </th>
   <th style="text-align:right;"> Tx.Captação </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2011 </td>
   <td style="text-align:right;"> 14.83930 </td>
   <td style="text-align:right;"> 19.24322 </td>
   <td style="text-align:right;"> 4.403925 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2012 </td>
   <td style="text-align:right;"> 12.78096 </td>
   <td style="text-align:right;"> 16.42084 </td>
   <td style="text-align:right;"> 3.639886 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2013 </td>
   <td style="text-align:right;"> 11.69613 </td>
   <td style="text-align:right;"> 15.34311 </td>
   <td style="text-align:right;"> 3.646986 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2014 </td>
   <td style="text-align:right;"> 11.10626 </td>
   <td style="text-align:right;"> 16.12738 </td>
   <td style="text-align:right;"> 5.021120 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2015 </td>
   <td style="text-align:right;"> 12.17626 </td>
   <td style="text-align:right;"> 17.91630 </td>
   <td style="text-align:right;"> 5.740035 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2016 </td>
   <td style="text-align:right;"> 10.89771 </td>
   <td style="text-align:right;"> 17.16730 </td>
   <td style="text-align:right;"> 6.269595 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2017 </td>
   <td style="text-align:right;"> 11.89732 </td>
   <td style="text-align:right;"> 16.81164 </td>
   <td style="text-align:right;"> 4.914314 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2018 </td>
   <td style="text-align:right;"> 11.94695 </td>
   <td style="text-align:right;"> 15.06246 </td>
   <td style="text-align:right;"> 3.115506 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2019 </td>
   <td style="text-align:right;"> 13.46580 </td>
   <td style="text-align:right;"> 16.42634 </td>
   <td style="text-align:right;"> 2.960539 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2020 </td>
   <td style="text-align:right;"> 13.85701 </td>
   <td style="text-align:right;"> 15.38795 </td>
   <td style="text-align:right;"> 1.530941 </td>
  </tr>
</tbody>
</table>
\label{table.spread.b}
\fonte{Densenvolvido a partir dos dados coletados}
\end{table}

$$
SprEp = \frac{RcOpCr}{\frac{1}{2} * OpTot_{t} + OpTot_{t-1}} - \frac{DesCap}{\frac{1}{2} * DepTot_{t} + DepTot_{t-1} }
$$

Outro aspecto em relação as informações contábeis é que a conta de operações de crédito (16000001) que já se apresenta reduzida do valor de provisão para operações de crédito (16900008), uma *proxy* para a inadimplência para cada instituição, podendo levar a equívocos a utilização destas duas variáveis sem o tratamento adequados, para fins de estimação o valor da inadimplência foi inserido na operação de crédito e a inadimplência calculada como percentual deste valor.  



O painel desenvolvido para a construção dos modelos resultou no total 11170 observações, 116 períodos de tempo, contemplando um total de 196 instituições flutuando a cada período, conforme \autoref{tb:rsumoobs}, caracterizando-se em um painel não balanceado. 

\begin{table}
\caption{Resumo de dados do Painel}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:right;"> TEMPO </th>
   <th style="text-align:right;"> OBSERVAÇÕES </th>
   <th style="text-align:right;"> INSTITUICÕES </th>
   <th style="text-align:right;"> VARIÁVEIS.EXPLICATIVAS </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 116 </td>
   <td style="text-align:right;"> 11170 </td>
   <td style="text-align:right;"> 196 </td>
   <td style="text-align:right;"> 19 </td>
  </tr>
</tbody>
</table>
\label{tb:rsumoobs}
\fonte{Densenvolvido a partir dos dados coletados}
\end{table}

Foi realizado o teste Dick-Fuller para checar a estacionariedade da série, indicando que é estacionária, conforme indicado na \autoref{tb:dickfuller} e visualizado no \autoref{graf:dickfuller}. 



\begin{table}
\caption{Resultado do teste Dick-Fuller}
\vspace{-2mm}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> ESTATÍSTICA </th>
   <th style="text-align:left;"> P.VALOR </th>
   <th style="text-align:left;"> PARÂMETROS </th>
   <th style="text-align:left;"> ALTERNATIVA </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> -12.052563219859 </td>
   <td style="text-align:left;"> 0.01 </td>
   <td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> Estacionária </td>
  </tr>
</tbody>
</table>
\vspace{1mm}
\label{tb:dickfuller}
\fonte{Desenvolvido a partir dos dados coletados}
\vspace{-2mm}
\end{table}

---
\begin{grafico}[!htbp]
\vspace{20pt}
\caption{Visualização }
\vspace{-7mm}

\vspace{-3mm}
\label{graf:dickfuller}
\fonte{Desenvolvido a partir de dados coletados}
\vspace{-2mm}
\end{grafico}
---



Foi realizada uma avaliação de correlação entre as variáveis do painel de dados, e conforme \autoref{graf:corr} foi detectada forte correlação entre algumas variáveis, o que viria a causar diversos problemas de estimação. Para contornar essa questão foram excluídas variáveis autocorrelacionadas que apresentavam similaridades teóricas ou sem significância.

\begin{grafico}[!htbp]
\vspace{20pt}
\caption{Correlação entre variáveis do painel}
\vspace{-7mm}
![](12-exportedfigures/chart.correlation-1.png)
\vspace{-3mm}
\label{graf:corr}
\fonte{Desenvolvido a partir de dados coletados}
\vspace{-2mm}
\end{grafico}

Entre as variáveis que foram eliminadas estão a *proxy* para capital próprio ($EPr$), participação de mercado ($MkSh$), grau de concentração ($GrCon$), operações de crédito total ($OpCrTotal$), *spread ex-ante* ($SprEa$) e o Índice de preços ao consumidor ($IPCA$). 

Foram eliminadas as variáveis *dummy* de controle de capital ($OCap$) e caráter da instituição ($CrIns$), por falta de informações evolutivas. Somente a variável *dummy*  referente à taxonomia ($TpIns$) foi mantida no modelo, esperando que ela venha captar as diferenças operacionais.

O painel de dados foi modificado em algumas variáveis para se adequar a nova modelagem e evitar problemas de autocorrelação. Preliminarmente dos dados monetários foram escalonados para unidades em milhões. Para as variáves referentes a base monetária e meios de pagamentos foram aplicados o logarítimo natural e de forma alternativa para fins de ajustes, considerado a variacação no ao longo do tempo destas variáveis.   

Foram incluídas no modelo as varíáveis de operações de crédito total ($lnOpTot$) e receita operacional total de cada instituição ($lnROp$), com aplicação de logarítimo natural. E para captar as diferenças operacionais foram incluídas as variáveis de participação das receitas segmentadas em relação as receitas operacionais: receitas de operação de crédito ($ROpCr$), receitas de serviços ($RSrv$), receitas de participações ($RPart$) e outras receitas operacionais ($OtROp$) 

Em relação a participação das modalidades de depósitos sobre as operações de créditos totais ($OpCrTot$), além dos dos depósitos a vista ($DepAv$) e depóstos a prazo ($DepAp$),  foram incluídos os depósitos depoupança ($DepPop$), depositos interfinanceiros ($DepIf$) e outros depósitos ($OtDep$). Com objetivos de verificar o perfil de captação por modalidade e como este influencia no nível de *spread*. 

Para a inadimplência ($Inad$) passou-se a usar a participação da provisão para crédito duvidoso sobre a soma das operações de crédito e outros crédito ($OpCrTot$)\footnote{Já adicionados dos próprios valores de provisão que se encontram subtraídos nas demonstrações contábeis}. 

Para captar as diferenças no perfil de despesas por modalidadde de instituições e como este influencia no nível de *spread* além das despesas administrativas em função das operações totais ($DAdm$) foram inclúídas as despesas de captação em função dos depósitos totais ($DesCap$) e outras despesas em função das operações de créditos totais ($OtDes$).

Finalizando os ajuste no modelo, foram incluídas as variáveis de impostos indiretos ($ImpInd$) e imposto de renda ($ImpRen$), completando as variáveis explícitas do *spread*, com exceção do compulsório por apresentar forte correlação com outras variáveis e do do fundo garantidor de crédito por se demonstrar insignificante.






```
$$
\begin{aligned}
\operatorname{\widehat{SprEp}} &= 0.43 - 0.13(\operatorname{lnOpTot}) + 0.01(\operatorname{lnAtv}) + 0(\operatorname{DAdm})\ - \\
&\quad 0.67(\operatorname{DesCap}) + 0(\operatorname{OtDes}) + 0(\operatorname{Inad}) + 0(\operatorname{RcPd})\ + \\
&\quad 0(\operatorname{lnMPA4}) + 0.05(\operatorname{SelMet}) + 0(\operatorname{VelMo}) + 0(\operatorname{ImpRend})\ + \\
&\quad 0(\operatorname{ImpInd}) + 0(\operatorname{DepAv}) + 0(\operatorname{DepAp}) + 0(\operatorname{DepIf})\ + \\
&\quad 0(\operatorname{DepPop}) + 0.12(\operatorname{lnROp}) + 0.02(\operatorname{ROpCr}) + 0.04(\operatorname{RSrv})\ + \\
&\quad 0.06(\operatorname{RPart})
\end{aligned}
$$
```

Os dados em painel foram estimados nos métodos *pooling*, efeitos fixos e efeitos aleatórios com os resultados demonstrados na \autoref{tb:regress}, com coeficientes de determinação ($R^2$) 0.884, 0.883 e 0.849 respectivamente. A diferença entre as variáveis dos modelos está na adoção da variação dos meios de pagamento ampliados ($M4$) no modelo de efeitos aleatórios.


```
Pooling Model

Call:
plm(formula = SprEp ~ lnOpTot + lnAtv + lnROp + DAdm + DesCap + 
    OtDes + +Inad + RcPd + TpIns + SelMet + VelMo + ImpRend + 
    ImpInd + DepAv + DepAp + DepIf + DepPop + ROpCr + RSrv + 
    RPart, data = banksDf.model, model = "pooling", index = c("BANCO"))

Unbalanced Panel: n = 196, T = 1-116, N = 11170

Residuals:
     Min.   1st Qu.    Median   3rd Qu.      Max. 
-0.814190 -0.026316 -0.010039  0.019961  0.515258 

Coefficients:
                                  Estimate  Std. Error  t-value  Pr(>|t|)    
(Intercept)                     3.5416e-01  8.2689e-03  42.8296 < 2.2e-16 ***
lnOpTot                        -1.2718e-01  1.4397e-03 -88.3389 < 2.2e-16 ***
lnAtv                           1.0636e-02  9.6830e-04  10.9838 < 2.2e-16 ***
lnROp                           1.1701e-01  9.4825e-04 123.3967 < 2.2e-16 ***
DAdm                            4.6974e-07  1.7354e-08  27.0679 < 2.2e-16 ***
DesCap                         -6.7654e-01  9.5720e-03 -70.6796 < 2.2e-16 ***
OtDes                           9.0936e-07  1.1995e-08  75.8087 < 2.2e-16 ***
Inad                           -8.3059e-07  1.7348e-08 -47.8791 < 2.2e-16 ***
RcPd                           -2.8492e-04  1.6147e-04  -1.7646 0.0776554 .  
TpInsBANCOS COMERCIAIS          3.5557e-02  5.1449e-03   6.9111 5.072e-12 ***
TpInsBANCOS DE DESENVOLVIMENTO  3.9885e-02  6.0134e-03   6.6327 3.448e-11 ***
TpInsBANCOS DE INVESTIMENTO     4.2660e-02  5.4818e-03   7.7821 7.764e-15 ***
TpInsBANCOS MULTIPLOS           2.7886e-02  4.7632e-03   5.8544 4.923e-09 ***
TpInsBNDES                     -8.0212e-03  6.4232e-03  -1.2488 0.2117693    
TpInsCAIXA ECONOMICA FEDERAL   -5.0106e-03  6.3408e-03  -0.7902 0.4294160    
SelMet                          5.6561e-02  1.6175e-02   3.4969 0.0004725 ***
VelMo                           9.8186e-09  3.0003e-08   0.3273 0.7434814    
ImpRend                         1.4526e-08  1.6364e-09   8.8767 < 2.2e-16 ***
ImpInd                         -1.0548e-09  1.6686e-09  -0.6322 0.5272993    
DepAv                           8.4673e-09  3.3554e-09   2.5235 0.0116335 *  
DepAp                           9.5943e-09  8.6592e-10  11.0799 < 2.2e-16 ***
DepIf                           1.4931e-08  1.6608e-09   8.9904 < 2.2e-16 ***
DepPop                          5.2700e-08  5.5991e-09   9.4121 < 2.2e-16 ***
ROpCr                           2.7014e-02  2.5687e-03  10.5167 < 2.2e-16 ***
RSrv                            3.4078e-02  6.2452e-03   5.4567 4.954e-08 ***
RPart                           6.7284e-02  1.3214e-02   5.0918 3.605e-07 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Total Sum of Squares:    218.97
Residual Sum of Squares: 25.013
R-Squared:      0.88577
Adj. R-Squared: 0.88551
F-statistic: 3456.56 on 25 and 11144 DF, p-value: < 2.22e-16
```






```

Resultados das Regressões
================================================================================================
                                                      Dependent variable:                       
                               -----------------------------------------------------------------
                                                             SprEp                              
                                      Pooling            Efeitos Fixos      Efeitos Aleatórios  
                                        (1)                   (2)                   (3)         
------------------------------------------------------------------------------------------------
lnOpTot                          -0.127*** (0.001)     -0.117*** (0.002)     -0.121*** (0.002)  
                                    t = -88.339           t = -52.774           t = -64.844     
                                     p = 0.000             p = 0.000             p = 0.000      
lnAtv                            0.011*** (0.001)      0.006*** (0.002)      0.008*** (0.001)   
                                    t = 10.984             t = 3.452             t = 5.551      
                                     p = 0.000             p = 0.001            p = 0.00000     
lnROp                            0.117*** (0.001)      0.111*** (0.001)      0.113*** (0.001)   
                                    t = 123.397           t = 110.064           t = 114.128     
                                     p = 0.000             p = 0.000             p = 0.000      
DAdm                           0.00000*** (0.00000)  0.00000*** (0.00000)  0.00000*** (0.00000) 
                                    t = 27.068            t = 27.082            t = 26.905      
                                     p = 0.000             p = 0.000             p = 0.000      
DesCap                           -0.677*** (0.010)     -0.624*** (0.011)     -0.636*** (0.011)  
                                    t = -70.680           t = -55.588           t = -59.585     
                                     p = 0.000             p = 0.000             p = 0.000      
OtDes                           0.00000*** (0.000)    0.00000*** (0.000)    0.00000*** (0.000)  
                                    t = 75.809            t = 76.550            t = 76.972      
                                     p = 0.000             p = 0.000             p = 0.000      
Inad                           -0.00000*** (0.00000) -0.00000*** (0.00000) -0.00000*** (0.00000)
                                    t = -47.879           t = -46.733           t = -47.922     
                                     p = 0.000             p = 0.000             p = 0.000      
RcPd                             -0.0003* (0.0002)    -0.0004** (0.0002)    -0.0003** (0.0002)  
                                    t = -1.765            t = -2.470            t = -2.048      
                                     p = 0.078             p = 0.014             p = 0.041      
TpInsBANCOS COMERCIAIS           0.036*** (0.005)      0.014*** (0.005)       0.033* (0.019)    
                                     t = 6.911             t = 2.682             t = 1.727      
                                     p = 0.000             p = 0.008             p = 0.085      
TpInsBANCOS DE DESENVOLVIMENTO   0.040*** (0.006)                              0.030 (0.022)    
                                     t = 6.633                                   t = 1.358      
                                     p = 0.000                                   p = 0.175      
TpInsBANCOS DE INVESTIMENTO      0.043*** (0.005)        0.012 (0.024)        0.037* (0.020)    
                                     t = 7.782             t = 0.526             t = 1.877      
                                     p = 0.000             p = 0.599             p = 0.061      
TpInsBANCOS MULTIPLOS            0.028*** (0.005)                              0.021 (0.018)    
                                     t = 5.854                                   t = 1.125      
                                     p = 0.000                                   p = 0.261      
TpInsBNDES                        -0.008 (0.006)                              -0.009 (0.026)    
                                    t = -1.249                                  t = -0.348      
                                     p = 0.212                                   p = 0.729      
TpInsCAIXA ECONOMICA FEDERAL      -0.005 (0.006)                              -0.008 (0.025)    
                                    t = -0.790                                  t = -0.313      
                                     p = 0.430                                   p = 0.755      
SelMet                           0.057*** (0.016)      0.051*** (0.016)      0.049*** (0.016)   
                                     t = 3.497             t = 3.133             t = 3.069      
                                    p = 0.0005             p = 0.002             p = 0.003      
VelMo                             0.000 (0.00000)       0.000 (0.00000)       0.000 (0.00000)   
                                     t = 0.327             t = 0.216             t = 0.129      
                                     p = 0.744             p = 0.829             p = 0.898      
ImpRend                          0.000*** (0.000)      0.000*** (0.000)      0.000*** (0.000)   
                                     t = 8.877             t = 6.273             t = 6.797      
                                     p = 0.000             p = 0.000             p = 0.000      
ImpInd                            -0.000 (0.000)         0.000 (0.000)        -0.000 (0.000)    
                                    t = -0.632             t = 0.102            t = -0.131      
                                     p = 0.528             p = 0.919             p = 0.896      
DepAv                             0.000** (0.000)      -0.000*** (0.000)     -0.000** (0.000)   
                                     t = 2.523            t = -3.341            t = -2.380      
                                     p = 0.012             p = 0.001             p = 0.018      
DepAp                            0.000*** (0.000)      0.000*** (0.000)      0.000*** (0.000)   
                                    t = 11.080             t = 8.664             t = 8.014      
                                     p = 0.000             p = 0.000             p = 0.000      
DepIf                           0.00000*** (0.000)    0.00000*** (0.000)    0.00000*** (0.000)  
                                     t = 8.990             t = 9.006             t = 9.129      
                                     p = 0.000             p = 0.000             p = 0.000      
DepPop                          0.00000*** (0.000)    0.00000** (0.00000)  0.00000*** (0.00000) 
                                     t = 9.412             t = 2.541             t = 4.305      
                                     p = 0.000             p = 0.012            p = 0.00002     
ROpCr                            0.027*** (0.003)      0.022*** (0.004)      0.023*** (0.004)   
                                    t = 10.517             t = 5.348             t = 6.357      
                                     p = 0.000            p = 0.00000            p = 0.000      
RSrv                             0.034*** (0.006)       0.028** (0.012)      0.030*** (0.010)   
                                     t = 5.457             t = 2.320             t = 2.898      
                                    p = 0.00000            p = 0.021             p = 0.004      
RPart                            0.067*** (0.013)      0.055*** (0.017)      0.064*** (0.016)   
                                     t = 5.092             t = 3.197             t = 3.901      
                                    p = 0.00000            p = 0.002            p = 0.0001      
Constant                         0.354*** (0.008)                            0.360*** (0.021)   
                                    t = 42.830                                  t = 16.903      
                                     p = 0.000                                   p = 0.000      
------------------------------------------------------------------------------------------------
Observations                          11,170                11,170                11,170        
R2                                     0.886                 0.834                 0.851        
Adjusted R2                            0.886                 0.830                 0.851        
================================================================================================
Note:                                                                *p<0.1; **p<0.05; ***p<0.01
```

Quitting from lines 937-938 (jacksontorres.Rmd) 
Error in nchar(x) : invalid multibyte string, element 1
Calls: local ... split.large.cells -> sapply -> lapply -> FUN -> split.single.cell
In addition: There were 31 warnings (use warnings() to see them)



No modelo *pooling*, não foi encontrada significância a 5%, para as variáveis de meios de pagamentos ($M4$), velocidade da moeda ($VelMo$), impostos indiretos ($ImpInd$) e depositos a vista ($DepAv$). As demais variáveis apresentação elevado nível de significância. Foi aplicado o teste de Wooldridge aceitando a hipótese nula que os erros para a taxonomia não são relacionados.  

\begin{table}
\caption{Resultado do teste Wooldridge para o modelo pooling}
\vspace{-2mm}

-----------------------------------------------------------
 Test statistic       P value       Alternative hypothesis 
---------------- ----------------- ------------------------
     5.664        1.479e-08 * * *     unobserved effect    
-----------------------------------------------------------

Table: Wooldridge's test for unobserved individual effects: `formula`
\vspace{1mm}
\label{tb:wdtest}
\fonte{Desenvolvido a partir dos dados estimados}
\vspace{-2mm}
\end{table}



Para comparação entre os modelos pooling e efeitos fixos foi aplicado o teste F de Chrow para avaliar os efeitos individuais, sendo rejeitada a hipótese nula de igualdade nos interceptos e coeficientes, indicando que o modelo de efeitos fixos seria mais adequado para estimação do modelo. 



Para comparar os modelos pooling e efeitos aleatórios foi utilizado o teste Breusch-Pagan (multiplicador de lagrange) para modelos em painel não balanceados, rejeitando a hipótese nula que a variância dos erros são iguais, indicando heterocedasticidade, dando assim preferência ao modelo de efeitos aleatórios.  


--------------------------------------------------------
 Test statistic   df   P value   Alternative hypothesis 
---------------- ---- --------- ------------------------
      2781        1    0 * * *    significant effects   
--------------------------------------------------------

Table: Lagrange Multiplier Test -  (Breusch-Pagan) for unbalanced panels: `SprEp ~ lnOpTot + lnAtv + lnROp + DAdm + DesCap + OtDes + +Inad +  ...`

Em termos de comparação entre os modelos de efeitos fixos e efeitos aleatórios foi utilizado o teste de Hausman, com rejeição da hipotese nula (parâmetros não correlacionados), indicando assim correlação entre os parâmetros e indicando que o modelo e efeitos fixos é mais adequado para avaliação do modelo.   



Para checar a dependência transversal do modelo de efeitos fixo foi utilizado o teste Pesaran, sendo rejeitada a hipótese nula (não correlação dos resíduos aos indivíduos) indicando que os resíduos entre os individuos estão correlacionados.


---------------------------------------------------------------
 Test statistic       P value         Alternative hypothesis   
---------------- ----------------- ----------------------------
      14.5        1.214e-47 * * *   cross-sectional dependence 
---------------------------------------------------------------

Table: Pesaran CD test for  cross-sectional dependence in panels: `SprEp ~ lnOpTot + lnAtv + +DAdm + DesCap + OtDes + +Inad + RcPd +     TpIns + SelMet + VelMo + ImpRend + ImpInd + DepAv + DepAp +     DepIf + DepPop + lnROp + ROpCr + RSrv + RPart`



A normalidade dos resíduos do modelo de efeitos aletórios foi testado pelo método, rejeitando a hipótese nula de normalidade dos resíduos, indicando que o modelo apresenta problemas de hetetocedasticidadade. 


-------------------------------
 Test statistic   df   P value 
---------------- ---- ---------
      2875        25   0 * * * 
-------------------------------

Table: studentized Breusch-Pagan test: `mod01.Pooling`

Foi testada a correlação serial do modelo de efeitos fixos, rejeitando a hipotese nula (de não correlação serial), indicando assim que o painel de dados possui problemas de correlação serial entre dos dados. 


-----------------------------------------------------------------
 Test statistic   df       P value        Alternative hypothesis 
---------------- ---- ------------------ ------------------------
      1106        1    1.991e-242 * * *   serial correlation in  
                                           idiosyncratic errors  
-----------------------------------------------------------------

Table: Breusch-Godfrey/Wooldridge test for serial correlation in panel models: `SprEp ~ lnOpTot + lnAtv + +DAdm + DesCap + OtDes + +Inad + RcPd +     TpIns + SelMet + VelMo + ImpRend + ImpInd + DepAv + DepAp +     DepIf + DepPop + lnROp + ROpCr + RSrv + RPart`

Os resultados das estimações dos modelos, demonstrou elevada siginificância para as variáveis, com coeficientes de determinação acima dos 88%, porém os testes indicaram problemas de heterocedasticidade e dependência cross-sectional, podendo estar inflando os resultados, demonstrando-se inadequados para uma estimação confiável. 

Porém, de acordo com Sargan (1964) e Hendry e Mizon (1978), os testes de dependência cross-seccional não significam essencialmente que exista essa condição para o modelo, e sim um problema de especificação dinâmica, com a omissão de variáveis defasadas. 

O modelo conceitual e economético desenvolvido está regido pelo dinamismo econômico, com uma variável dependente obtida através da diferença de dois termos de resultados, dependente de variáveis microecnômicas endógenas e de mercado, e de variáveis macroeconômicas, necessitando assim de uma modelagem que comporte esse dinamismo.

Diante as características do modelo, foi identificada a metodologia de painel de vetores autoregressivos (PVAR), que comporta mais de uma variável dependente defasadad, variáveis preditoras endógenas e variáveis preditoras exógenas com estimação por método de momentos generalizados (GMM) . 

A metodologia PVAR mostra-se compatível com a característica de painel não balanceado (N > T), porém necessitando de tratamento em observações inciais, e enfretar problemas com a questão da heterogeneidade entre os grupos de cortes transversais. Tais limitações seriam contornadas com a utilização do método GMM (\uppercase{Newey e Rosen} 1988). 

O modelo de estimar GMM proposto por Arellano e Bond (1991), vem contornar a incosistência dos modelos de efeitos fixos, utilizando variáveis defasadas como instrumentos para variáveis endógenas. O procedimento de estimação pode ser em uma etapa, ou duas etapas, onde esta se basea nos resíduos da primeira etapa. E uma matriz é utilizada para retirar o modelo de efeito fixo.  

No modelo PVAR-GMM proposto por Arellano e Bond (1991) se alguma variável possuir raiz unitária, o estimador será inconsistente. Porém, de acordo com Binder, Hsiao e Pesaran (2005), seria mais eficiente do que estimar cada equação por GMM. Tal limitação seria contornada pela proposta de uma sistema GMM apresentado por Blundell e Bond (1998). 

A proposta de Blundell e Bond (1998) consiste corrigir o viés causado pelos efeito fixos aplicados em painéis dinâmicos, através da modificação, ou seja, a retirada em primeira ordem, dos instrumentos, passando a serem exógenos aos efeitos fixos, assumindo que as variações nas variáveis instrumentais não são correlacionadas com os efeitos fixos e com o erro. 

O novo painel foi desenvolvido com a eliminação de variáveis que ainda apresentavam  nível de correlação considerado elevado para a metodologia. As variáveis de *spread ex-post* ($SprEp$) e rentabilidade foram inseridas simultaneamente no modelo como depedentesntes, as variáveis micreconômicas foram inseridas como preditoras e as variáveis macroeconômicas foram inseridas como exógenas. 



\begin{table}[!hbtp]
\captionof{table}{Resultado do modelo PVAR-GMM}
\vspace{-2mm}
<p><b>Dynamic Panel VAR estimation, one-step GMM</b></p><p>Transformation: <em>Forward orthogonal deviations</em><br>Group variable: <em>BANCO</em><br>Time variable: <em>DATA</em><br>Number of observations = <em>654</em><br>Number of groups = <em>126</em><br>Obs per group: min = <em>1</em><br>Obs per group: avg = <em>7.03225806451613</em><br>Obs per group: max = <em>9</em><br>Number of instruments = <em>422</em><br></p><table class="texreg" style="margin: 10px;border-collapse: collapse;border-spacing: 0px;caption-side: bottom;color: #000000;border-top: 2px solid #000000;">
<thead>
<tr>
<th style="padding-left: 5px;padding-right: 5px;">&nbsp;</th>
<th style="padding-left: 5px;padding-right: 5px;">SprEp</th>
<th style="padding-left: 5px;padding-right: 5px;">Rent</th>
</tr>
</thead>
<tbody>
<tr style="border-top: 1px solid #000000;">
<td style="padding-left: 5px;padding-right: 5px;">lag1_SprEp</td>
<td style="padding-left: 5px;padding-right: 5px;">0.0715<sup>**</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">-3.2560<sup>*</sup></td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0260)</td>
<td style="padding-left: 5px;padding-right: 5px;">(1.2784)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">lag1_Rent</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0051<sup>*</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">0.1488</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0021)</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.1853)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">lag2_SprEp</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0437<sup>**</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">-0.6065</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0160)</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.8242)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">lag2_Rent</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0031<sup>*</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0749</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0015)</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0695)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">ImpRend</td>
<td style="padding-left: 5px;padding-right: 5px;">0.4411<sup>*</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">-16.8116<sup>*</sup></td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.1770)</td>
<td style="padding-left: 5px;padding-right: 5px;">(8.5232)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">ImpInd</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0844</td>
<td style="padding-left: 5px;padding-right: 5px;">2.7044<sup>*</sup></td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0464)</td>
<td style="padding-left: 5px;padding-right: 5px;">(1.0528)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">EPr</td>
<td style="padding-left: 5px;padding-right: 5px;">0.0003</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0202</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0006)</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0134)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">RcCr</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0919</td>
<td style="padding-left: 5px;padding-right: 5px;">-6.6041</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.2346)</td>
<td style="padding-left: 5px;padding-right: 5px;">(11.0450)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">DAdm</td>
<td style="padding-left: 5px;padding-right: 5px;">1.3201<sup>**</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">37.5553<sup>**</sup></td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.4422)</td>
<td style="padding-left: 5px;padding-right: 5px;">(13.4838)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">OtDes</td>
<td style="padding-left: 5px;padding-right: 5px;">2.7199<sup>***</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">2.8166</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.2221)</td>
<td style="padding-left: 5px;padding-right: 5px;">(6.6387)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">OpEmp</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.5976</td>
<td style="padding-left: 5px;padding-right: 5px;">77.8192</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.9681)</td>
<td style="padding-left: 5px;padding-right: 5px;">(53.2330)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">OpFin</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.1934</td>
<td style="padding-left: 5px;padding-right: 5px;">47.8021</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(1.0013)</td>
<td style="padding-left: 5px;padding-right: 5px;">(50.6135)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">OtOp</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.3429</td>
<td style="padding-left: 5px;padding-right: 5px;">56.7566</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(1.0118)</td>
<td style="padding-left: 5px;padding-right: 5px;">(53.6945)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">ROpCr</td>
<td style="padding-left: 5px;padding-right: 5px;">0.0756</td>
<td style="padding-left: 5px;padding-right: 5px;">-2.5694</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.0961)</td>
<td style="padding-left: 5px;padding-right: 5px;">(4.2346)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">RSrv</td>
<td style="padding-left: 5px;padding-right: 5px;">0.0494</td>
<td style="padding-left: 5px;padding-right: 5px;">-15.1055</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.1444)</td>
<td style="padding-left: 5px;padding-right: 5px;">(12.2793)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">RPart</td>
<td style="padding-left: 5px;padding-right: 5px;">-2.0360<sup>*</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">-43.6943</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.8491)</td>
<td style="padding-left: 5px;padding-right: 5px;">(30.1633)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">DepAv</td>
<td style="padding-left: 5px;padding-right: 5px;">0.0010</td>
<td style="padding-left: 5px;padding-right: 5px;">-28.1490</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(4.3527)</td>
<td style="padding-left: 5px;padding-right: 5px;">(196.4880)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">DepAp</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0810</td>
<td style="padding-left: 5px;padding-right: 5px;">-13.0582</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(4.3261)</td>
<td style="padding-left: 5px;padding-right: 5px;">(198.3345)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">DepIf</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.1164</td>
<td style="padding-left: 5px;padding-right: 5px;">-21.3486</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(4.3443)</td>
<td style="padding-left: 5px;padding-right: 5px;">(196.8294)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">DepPop</td>
<td style="padding-left: 5px;padding-right: 5px;">0.2094</td>
<td style="padding-left: 5px;padding-right: 5px;">42.9848</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(5.6451)</td>
<td style="padding-left: 5px;padding-right: 5px;">(258.6868)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">Inad</td>
<td style="padding-left: 5px;padding-right: 5px;">1.0015<sup>*</sup></td>
<td style="padding-left: 5px;padding-right: 5px;">38.2173</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.5028)</td>
<td style="padding-left: 5px;padding-right: 5px;">(43.3053)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">lnOpCrMkt</td>
<td style="padding-left: 5px;padding-right: 5px;">0.2384</td>
<td style="padding-left: 5px;padding-right: 5px;">-7.8404</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.2169)</td>
<td style="padding-left: 5px;padding-right: 5px;">(9.5158)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">Comp</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0006</td>
<td style="padding-left: 5px;padding-right: 5px;">0.0421</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(460.8790)</td>
<td style="padding-left: 5px;padding-right: 5px;">(21024.2749)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">SelMet</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0503</td>
<td style="padding-left: 5px;padding-right: 5px;">2.7632</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(2.3769)</td>
<td style="padding-left: 5px;padding-right: 5px;">(101.5705)</td>
</tr>
<tr>
<td style="padding-left: 5px;padding-right: 5px;">lnMPA2</td>
<td style="padding-left: 5px;padding-right: 5px;">-0.0224</td>
<td style="padding-left: 5px;padding-right: 5px;">-1.9377</td>
</tr>
<tr style="border-bottom: 2px solid #000000;">
<td style="padding-left: 5px;padding-right: 5px;">&nbsp;</td>
<td style="padding-left: 5px;padding-right: 5px;">(0.1269)</td>
<td style="padding-left: 5px;padding-right: 5px;">(6.3954)</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="font-size: 0.8em;" colspan="3"><sup>***</sup>p &lt; 0.001; <sup>**</sup>p &lt; 0.01; <sup>*</sup>p &lt; 0.05</td>
</tr>
</tfoot>
</table>
<p><b>Instruments for  equation </b><p>Standard<br><em>lnOpCrMkt, Comp, SelMet, lnMPA2</em></p><p>GMM-type<br><em>Dependent vars: L(2,9)<br>Predet vars: L(1, 9)<br>Collapse = TRUE</em></p><p><b>Hansen test of overid. restrictions:</b> <em>chi2(372) = 300.02 Prob > chi2 = 0.997<br>(Robust, but weakened by many instruments.)</em><br></p>
\vspace{1mm}
\label{tb:pvargmm}
\fonte{Desenvolvido a partir dos dados estimados}
\vspace{-2mm}
\end{table}


  * **MMSC_BIC**: _-2274_
  * **MMSC_AIC**: _-494_
  * **MMSC_HQIC**: _-1258_

<!-- end of list -->


```
Eigenvalue stability condition:

              Eigenvalue    Modulus
1 -0.01124189+0.3238655i 0.32406055
2 -0.01124189-0.3238655i 0.32406055
3  0.16326290+0.0000000i 0.16326290
4  0.07946338+0.0000000i 0.07946338

All the eigenvalues lie inside the unit circle.
PVAR satisfies stability condition.
```

\begin{grafico}[!htbp]
\vspace{20pt}
\caption{Gráfico de estabilidade do modelo PVAR GMM}
\vspace{-7mm}
![](12-exportedfigures/stability.plot-1.png)
\vspace{-3mm}
\label{graf:stability}
\fonte{Desenvolvido a partir de dados coletados}
\vspace{-2mm}
\end{grafico}








---
























---

<!--chapter:end:05-application.Rmd-->

