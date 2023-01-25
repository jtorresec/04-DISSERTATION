--- 
date: 2020
author: "Jackson da Silva Torres"
documentclass: 04-class-files/abntex2
classoption: [12pt, openright, oneside, a4paper, chapter=TITLE, section=TITLE, subsection=Title, english, french, spanish, portugues, sumario=tradicional]
header-includes:
- \input{00-input/00-dados}
- \input{09-packages/00-pacotes}
- \makeindex
- \usepackage{helvet}
- \renewcommand{\familydefault}{\sfdefault}
- \DeclareUnicodeCharacter{0301}{******}
- \DeclareUnicodeCharacter{0303}{******}
- \DeclareUnicodeCharacter{0327}{******}
spacing: OnehalfSpacing
site: bookdown::bookdown_site
bibliography: '10-references/referencias.bib'
biblio-style: abnt
link-citations: yes
toc: false
references: false
always_allow_html: TRUE
---









<!--chapter:end:index.Rmd-->


 \ifthenelse{\equal{\terCapa}{Sim}}{
\imprimircapa}{}

\ifthenelse{\equal{\terFolhaRosto}{Sim}}{
\imprimirfolhaderosto*}{}

 \ifthenelse{\equal{\terFichaCatalografica}{Sim}}
 {\insereFichaCatalografica{}\cleardoublepage}
 {}


 \ifthenelse{\equal{\terErrata}{Sim}}
 {\begin{errata}%\color{blue}
   \imprimirerrata
  \end{errata}}
 {}


\ifthenelse{\equal{\terTermoAprovacao}{Sim}}{
\insereAprovacao}{}


\ifthenelse{\equal{\terDedicatoria}{Sim}}{
\begin{dedicatoria}
   \vspace*{\fill}
   \centering
   \noindent
   \DedicatoriaTexto
   \vspace*{\fill}
\end{dedicatoria}
}{}


 \ifthenelse{\equal{\terAgradecimentos}{Sim}}
 {\begin{agradecimentos}
    \AgradecimentosTexto
  \end{agradecimentos}
  }{}


\ifthenelse{\equal{\terEpigrafe}{Sim}}{
\begin{epigrafe}
    \vspace*{\fill}
	\begin{flushright}
        \EpigrafeTexto
	\end{flushright}
\end{epigrafe}
}{}


 \ifthenelse{\equal{\terResumos}{Sim}}{
\begin{resumo}
    \ResumoTexto
    

   \noindent 
   \textbf{Palavras-chaves}: \PalavraschaveTexto
\end{resumo}

\begin{resumo}[ABSTRACT]
 \begin{otherlanguage*}{english}
   \AbstractTexto
   
   \noindent 
   \textbf{Key-words}: \KeywordsTexto
 \end{otherlanguage*}
\end{resumo}



\ifthenelse{\equal{\Resume}{}}
{}
{
 \begin{resumo}[RESUME]%Résumé
  \begin{otherlanguage*}{french}
     \Resume
     
   \noindent      
    \textbf{Mots clés}: \Motscles
  \end{otherlanguage*}
 \end{resumo}
} 


\ifthenelse{\equal{\Resume}{}}{}
{ \begin{resumo}[RESUMEN]
  \begin{otherlanguage*}{spanish}
    \Resumen 
   
   \noindent    
    \textbf{Palabras clave}: \Palabrasclave
  \end{otherlanguage*}
 \end{resumo}
}
}{}


\ifthenelse{\equal{\terListaFiguras}{Sim}}{
\pdfbookmark[0]{\listfigurename}{lof}
\listoffigures*
\cleardoublepage
}{}



\ifthenelse{\equal{\terListaTabelas}{Sim}}{
\listoftables*
\cleardoublepage
}{}




 \ifthenelse{\equal{\terSiglasAbrev}{Sim}}{
    \imprimirlistadesiglas
    \cleardoublepage
    \imprimirlistadesimbolos
    \cleardoublepage
 }{}


\ifthenelse{\equal{\terSumario}{Sim}}{
\tableofcontents*
}{}
 

 
 

<!--chapter:end:00-pretext.Rmd-->

\textual
\pagestyle{simple}

\chapter[INTRODUÇÃO]{INTRODUÇÃO}

---
O lucro no setor bancário brasileiro é considerado muito elevado, afetando principalmente o setor produtivo \cite{dantas:2012}. 
* A américa latina possui as maiores taxas de juros, bancos mais ineficientes e maiores requerimentos de reserva, implicando maiores impactos no spread \cite{dantas:2012}
---




<!--chapter:end:01-intro.Rmd-->

---
#\part{REFERÊNCIAS TEÓRICOS}
---

\textual
\pagestyle{simple}

\chapter{Setor Bancário no Brasil}

Neste capítulo serão abordados os conceitos, características, composição e
evolução do setor bancário brasileiro, com objetivo de identificar variáveis
quantitativas e qualitativas relevantes para as análises dos componentes e
determinantes do *spread* bancário.

Foi verificado o panorama das publicações de pesquisas relacionadas ao setor
bancário no brasil, através da plataforma Capes, entre os anos 2000 e 2020.
Foram utilizados os termos: Setor Bancário, Indústria Bancária, Mercado
Bancário, Estrutura Bancária e Brasil\footnote{Foram utilizados operadores
booleanos em inglês: banking(structure or market or sector or industry) and
brazil*.}, revisados por pares, remontando um total de 4.512 publicações,
indicando a relevância do tema.

Essa avaliação se torna relevante na concepção que o nível de desenvolvimento
do sistema financeiro guarda relação direta com grau de desenvolvimento
econômico do país ou região (ASSAF NETO (2014) 

---
#*apud* \cite{timotio:2018}. 
---

O setor bancário exerce papel socioeconômico fundamental, atuando na
intermediação financeira, promovendo a circulação do fluxo de crédito,
disponibilizando meios de pagamentos e opções para alocação de recursos MAFFILI
E SOUZA (2007) 

---
#*apud* \cite{timotio:2018}.
---

O desenvolvimento do setor bancário pode ser influenciado por diversos fatores
endógenos — relacionados com a gestão, tecnologia e eficiência de cada
instituição — e exógenos — envolvendo a regulação, conjuntura econômica e
social (ROVER et. al (2011). 

---
# acima \cite{timotio:2018}
---

Devido a importância de um sistema financeiro sólido no desenvolvimento
econômico de longo prazo, o lucro das instituições bancárias desperta constante
atenção em diversos países e regiões. Estas giram em torno dos riscos que
envolvem descontinuidade e insolvência (COUTO *apud* \cite{dantas:2012}). De
acordo com Freitas e Khöler (2009) *apud* \textcite{dantas:2012}, o Brasil
apresenta uma conjuntura bancária bem específica em comparação a outros países.

O setor bancário brasileiro é componente do Sistema Financeiro Nacional (SFN),
sob hierarquia normativa do Conselho Monetário Nacional (CMN) e supervisão do
Banco Central do Brasil (BACEN). As instituições que formam o setor bancário
assumem o papel de operadoras no mercado de crédito, atuando como
intermediadoras financeiras junto às pessoas físicas e jurídicas, podendo ser 
de caráter público ou privado \cite{Lei:4595:1964}.



As modalidades de instituições no setor bancário brasileiro são os Bancos
Comerciais, Bancos de Investimentos, Bancos de Desenvolvimento, Bancos de
Câmbio, Bancos Múltiplos e Caixas Econômicas\footnote{Atualmente nessa
modalidade somente a Caixa Econômica Federal está em funcionamento}
\cite{Lei:4595:1964}.

\textcolor{red}{INSERIR PARÁGRAFO COM CARACTERÍSTICAS GERAIS DAS INSTITUIÇÕES BANCÁRIAS}

Os bancos comerciais são instituições financeiras de caráter público ou privado
constituídas na forma de sociedade anônima, atuando na intermediação de
recursos financeiros de curto e médio prazo para financiamento de atividades
comerciais, industriais, serviços, pessoas físicas e terceiros, realizando
captações através de depósitos à vista de livre movimento e depósitos à prazo
\cite{Res:2099:1994}.

A modalidade de Bancos de Investimento, as instituições financeiras devem ter
caráter privado, podendo operar participações temporárias em sociedades,
financiamentos produtivos para ativo fixo e capital de giro e gestão de
recursos de terceiros. Realizam captação de recursos por meio de depósitos a
prazo, repasses externos e internos e comercialização de cotas de fundos de
investimentos que administram \cite{Res:2624:1999}.

Na categoria de Bancos de Desenvolvimento, são autorizadas instituições
financeiras de caráter público, controladas por governos estaduais, com foco em
financiamento de atividades que promovam o desenvolvimento econômico regional
no médio e longo prazo, realizando operações passivas de depósitos a prazo,
recursos externos, endossos hipotecários e operações ativas de empréstimos e
financiamentos ao setor privado \cite{Res:394:1976}. 

Os Bancos Múltiplos se caracterizam por instituições financeiras que, podem
assumir caráter público ou privado e, são autorizadas a realizar operações
ativas e passivas por meio de acumulação das carteiras comercial, investimento,
desenvolvimento, crédito imobiliário, arrendamento mercantil e crédito, financiamento e investimento \cite{Res:2099:1994}.  

Em sua composição os Bancos Múltiplos devem assumir no mínimo duas carteiras e,
de forma obrigatória, uma delas, deve ser a comercial ou a de investimento. As
que optarem por carteira comercial podem realizar captação via depósito à vista. Somente os Bancos Públicos podem acumular a carteira de desenvolvimento
\cite{Res:2099:1994}. 

No segmento de Bancos de Câmbio, as instituições financeiras possuem
autorização para realizar operações compra e venda de crédito cambial. Entre as
operações de crédito estão o financiamento para exportadores e importadores e
antecipação mediante contratos cambiais. Podem receber depósitos em contas com
movimentação restrita e sem remuneração exclusiva para as operações cambiais
\cite{Res:3426:2006}.

A Caixa Econômica Federal (CEF), fundada em 1861, e regulamentada pelo
Decreto-Lei nº 759 de 1969 é uma empresa pública subordinada ao Ministério da
Economia, com operações similares a de um Banco Comercial, priorizando projetos
e programas relacionados a área social e infraestrutura \cite{DL:759:1969}. 

A CEF atua com operações de crédito ao consumidor, para financiamento de bens
de consumo duráveis, operações de garantia de penhor industrial e caução de
títulos. Detém o monopólio sobre o penhor de bens pessoais e venda de bilhetes
de loteria. É integrante do Sistema Financeiro da Habitação (SFH) e Sistema
Brasileiro de Poupança e Empréstimo (SBPE), além da detenção centralizado do
recolhimento e aplicação dos recursos do FGTS \cite{DL:759:1969}.

O setor bancário brasileiro passou por significativas modificações em sua
estrutura no final da década de 1980 e ao longo da década de 1990. Estas
modificações ocorreram em grande parte como reflexo às mudanças internacionais
e ao processo de abertura comercial e financeira que se iniciou no Brasil
\cite{camargo:2009}. 

Na \autoref{tab:banks} é possível verificar a concentração — levando em
consideração a quantidade de instituições — do setor bancário brasileiro na
categoria de bancos múltiplos, com 76%,3 de participação, onde apenas 11,5% das
instituições bancárias operam exclusivamente com carteira comercial e 6,3%
exclusivamente com investimento.

\begin{table}
\caption{Composição do setor bancário brasileiro por segmento em dezembro de 2019}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Segmento </th>
   <th style="text-align:left;"> Sigla </th>
   <th style="text-align:left;"> Ano </th>
   <th style="text-align:right;"> Quantidade </th>
   <th style="text-align:left;"> Participação </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 6cm; "> Banco Múltiplo </td>
   <td style="text-align:left;"> BM </td>
   <td style="text-align:left;"> 2019 </td>
   <td style="text-align:right;"> 132 </td>
   <td style="text-align:left;"> 76.30% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 6cm; "> Banco Comercial </td>
   <td style="text-align:left;"> BC </td>
   <td style="text-align:left;"> 2019 </td>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:left;"> 11.56% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 6cm; "> Banco de Investimento </td>
   <td style="text-align:left;"> BI </td>
   <td style="text-align:left;"> 2019 </td>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:left;"> 6.36% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 6cm; "> Banco de Câmbio </td>
   <td style="text-align:left;"> B Camb </td>
   <td style="text-align:left;"> 2019 </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> 2.89% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 6cm; "> Banco de Desenvolvimento </td>
   <td style="text-align:left;"> BD </td>
   <td style="text-align:left;"> 2019 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:left;"> 2.31% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 6cm; "> Caixas Econômicas </td>
   <td style="text-align:left;"> CE </td>
   <td style="text-align:left;"> 2019 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> 0.58% </td>
  </tr>
</tbody>
</table>
\label{tab:banks}
\fonte{Desenvolvido com dados do Banco Central}
\end{table}

Entre as principais mudanças iniciadas na década de 1980 está a reforma
bancária ocorrida em 1998, através da Resolução nº 1.524 \cite{Res:1524:1988},
que instituiu diversas medidas de desregulamentação, entre elas a extinção da
necessidade de carta-patente para constituição de Bancos Múltiplos. 

Mesmo com as limitações da Constituição de 1988 \cite{constituicao:1988} para
instalação de bancos estrangeiros, não houveram restrições para que ocorresse
aumento na participação de capital estrangeiro em bancos nacionais 
\cite{camargo:2009}. 

\begin{figure}
\captionof{figure}{Evolução do setor bancário brasileiro por segmento}
![](12-exportedfigures/bank evolution-1.png)
\label{fig:segmento}
\fonte{Desenvolvido a partir de dados do Banco Central}
\end{figure}

\textcolor{red}{ABORDAR SOBRE O ÍNDICE HHI (CONCENTRAÇÃO)}

A \autoref{fig:segmento} demonstra a evolução número de instituições bancárias
por segmento entre 1978 à 2019, podendo ser visualizada uma mudança na
composição da estrutura, com significativo aumento de instituições aderindo
modalidades de múltiplas carteiras \footnote{As primeiras instituições com
carteira múltipla começaram a operar no ano de 1988} e redução de instituições que operam exclusivamente com carteira comercial e exclusivamente com carteira
de investimento.



\begin{table}
\caption{Composição por tipo de iniciativa no setor bancário brasileiro — Dezembro 2019}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Tipo </th>
   <th style="text-align:left;"> Participação </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 6cm; "> Privado </td>
   <td style="text-align:left;width: 6cm; "> 93% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 6cm; "> Público </td>
   <td style="text-align:left;width: 6cm; "> 7% </td>
  </tr>
</tbody>
</table>
\label{tab:iniciativa}
\fonte{Desenvolvido pelo autor, com dados do Banco Central}
\end{table}

Alguns dos efeitos da abertura comercial-financeira e das modificações na
estrutura bancária provenientes das medidas governamentais foram o aumento da
participação de instituições estrangeiras no país e, um consistente processo de
fusões e aquisições, de ambas as origens de capital, que resultou em
considerável elevação do grau de concentração \cite{camargo:2009}.

\begin{figure}
\captionof{figure}{Evolução da quantidade de instituições no setor bancário brasileiro}
![](12-exportedfigures/concetration-1.png)
\label{fig:concentracao}
\fonte{Desenvolvido pelo autor, com dados do Banco Central}
\end{figure}

A observação sobre o aumento da concentração bancária no Brasil realizada por
\textcite{camargo:2009} pode ser visualizada na \autoref{fig:concentracao}.
Entre as metades das décadas de 1980 e 1990, com redução da concentração,
levando em consideração o número de instituições. Esse cenário passou se
inverter a partir de 1994, chegando em 2019 a um nível aproximado ao observado
no início da década de 1980.

De acordo com Strachman e Vasconcelos *apud* \textcite{camargo:2009}, o aumento
da concentração bancária pode ser prejudicial ao crescimento econômico, uma vez
que, com maior participação de mercado, as instituições bancárias acabam por
obter a prerrogativa de determinar seus preços, comportamento este observado em
\textcite{klein:1971}. 

Segundo \textcite{camargo:2009} e \textcite{dantas:2012} por outra perspectiva,
o ganho de escala, onde o cenário de aumento do tamanho das instituições, das
operações de crédito e redução de custos operacionais atua melhorando a
remuneração dos depósitos podendo atuar na redução dos juros finais pagos pelos
clientes.

Outra possível tendência para a concentração bancária seria a redução do risco
das operações, implicando em redução de custos, obtida por meio expansão
geográfica, setorial e de produtos financeiros. Porém os possíveis efeitos da
concentração dependem de uma série de condições, principalmente em torno da
eficiência e do nível de concorrência no mercado \cite{camargo:2009}.

\begin{table}
\caption{Setor bancário brasileiro por origem de capital — Dezembro de 2019}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Capital </th>
   <th style="text-align:right;"> Quantidade </th>
   <th style="text-align:left;"> Participação </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Nacionais </td>
   <td style="text-align:right;"> 66 </td>
   <td style="text-align:left;"> 43.1% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Controle Estrangeiro </td>
   <td style="text-align:right;"> 60 </td>
   <td style="text-align:left;"> 39.2% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nacionais com Participação Estrangeira </td>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:left;"> 7.8% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Públicos </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:left;"> 6.5% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Estrangeiros </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> 3.3% </td>
  </tr>
</tbody>
</table>
\label{tab:origemcapital}
\fonte{Desenvolvida pelo autor, com dados do Banco Central}
\end{table}

\begin{figure}
\captionof{figure}{Evolução de origem de capital das instituições bancárias no Brasil}
![](12-exportedfigures/capital graphic-1.png)
\label{fig:ev.capital}
\fonte{Desenvolvido pelo autor, com dados do Banco Central}
\end{figure}

O aumento da participação estrangeira no setor bancário brasileiro durante a
década de 1990, evidenciado por \textcite{camargo:2009} pode ser observado na
\autoref{fig:ev.capital}. Esse aumento ocorreu principalmente através do
controle acionário, com elevação acentuada na segunda metade da década de 1990
até o início da década de 2000. Ocorrendo redução em instituições
nacionais, estrangeiras e nacionais com participação estrangeira.  

Durante este período, a inclinação para aplicação massiva em títulos públicos
se dava diante a manutenção de elevadas taxas de juros, tornando o crédito para
empreendimentos privados de elevado risco, e consequentemente elevando
substancialmente o *spread* bancário e reduzindo a oferta de crédito
\cite{camargo:2009}.

A expectativa com a entrada de instituições estrangeiras era que houvesse
elevação da concorrência e, consequentemente, redução no *spread* bancário,
aumento da concessão de crédito, melhoria da qualidade e diversificação dos
produtos financeiros, avanços em tecnologias, ou seja, uma elevação na
eficiência do setor \cite{camargo:2009}. 

Porém, o que se observou foi a adoção de postura conservadora por partes dos
bancos estrangeiros, com estratégia de ativos inclinada para negociação de
títulos públicos, e passivos direcionados para a captação de recursos advindos
de grupos de rendas média e alta, com exceção dos bancos públicos que
concentraram em operações de crédito \cite{camargo:2009}. 

Segundo Singh *apud* \textcite{leal:2006}, durante a década de 1990 o *spread*
bancário no Brasil esteve superior a 50%a.a., enquanto na América Latina esteve
entre 10% a 15% a.a. A relação crédito/PIB em 2003 no Brasil era de 23%,
considerado muito baixo em comparação Chile com 68,5%, Uruguai com 64,3%, Estados Unidos com 60,8%, Japão com 64,3%, Coréia com 98,9% e Europa com 140,6% \cite{camargo:2009, leal:2006}.


\begin{figure}
\captionof{figure}{Evolução da relação Crédito/PIB no Brasil}
![](12-exportedfigures/credit gdp-1.png)
\label{fig:credgdp}
\fonte{Desenvolvido pelo autor, com dados o Banco Central}
\end{figure}

a \autoref{fig:credgdp} demonstra o comportamento da relação crédito/PIB no
Brasil, que entre a segunda metade da década de 1990 até a meados da primeira
metade da década de 2000 sofreu significativa queda, ficando abaixo dos 25%.
Após esse período a oferta de crédito sofreu uma expansão exponencial atingindo
patamares acima de 50% do PIB. 

Durante o período citado, foi observado no setor bancário brasileiro os maiores
níveis de *spread* praticados no mundo, associado a um quadro econômico
instabilidades e baixos crescimento e desenvolvimento. Esse cenário encontra
embasamento em estudos teóricos e empíricos que demonstram que um sistema
financeiro desenvolvido favorece o crescimento e desenvolvimento econômico
\cite{levine:1997, matos:2003}.

\begin{figure}
\captionof{figure}{Evolução anual do saldo carteira de crédito}
![](12-exportedfigures/balance credit-1.png)
\label{fig:saldocredito}
\fonte{Elaborado com dados do Banco Central}
\end{figure}

A \autoref{fig:saldocredito} demonstra a evolução do saldo da carteira de
crédito anual em termos correntes entre 1990 e 2020, podendo ser visualizada
uma expansão exponencial de crédito a partir do início da década de 2000, com
leve recuo na até metade da década de 2010 e retoma ultrapassando máxima
anterior.   




Diante o levantamento, o setor bancário brasileiro durante o período avaliado
passou por diversas transformações em sua estrutura no que tange a concentração
de mercado, aumento da participação de capital estrangeiro por meio de controle
acionário, redução da participação pública. 

Em relação aos indicadores foi verificado que entre a década de 1980 até metade
da década de 1990, no cenário hiperinflacionário, mesmo com redução da
concentração bancária, os indicadores de eficiência de intermediação
financeiras como o *spread* bancário e a relação crédito/PIB estavam em níveis
considerados ineficientes e muito destoantes em comparação a outros países e
regiões. 

A partir de 1995 se observou mudanças significativas no setor bancário, com
nova concentração, redução de instituições nacionais devido o controle
acionário por capital estrangeiro, e expressiva redução no *spread* bancário e
a partir de 2004 uma mudança significativa na relação crédito/PIB.

Este capítulo levantou informações amplas sobre o setor bancário brasileiro, e
identificou como variáveis o nível de concentração, tipo de iniciativa, origem
do capital, taxa de juros, *spread* bancário, saldo da carteira de crédito de
recursos livres e destinados, PIB... No próximo capítulo serão levantados
conceitos, definições e estudos sobre a evolução, decomposição e determinantes
do *spread* bancário.  

\textcolor{red}{INSERIR BREVE CONTEXTO E DADOS SOBRE BASE MONETÁRIA}

\section{Finanças Bancárias}

\textcolor{red}{INSERIR CONTEXTO SINTÉTICO SOBRE FINANÇAS BANCÁRIA}




<!--chapter:end:02-bankingstructure.Rmd-->

\textual
\pagestyle{simple}

\chapter{Spread Bancário}

Este capítulo irá tratar sobre os principais aspectos e características do
*spread* bancário. Na primeira parte serão abordados conceitos e definições
gerais. Na segunda parte as características amplas do mercado Brasileiro. Na
terceira parte sobre os estudos empíricos realizados no Brasil. O foco é
identificar elementos que possam contribuir com o objeto deste estudo.

\section{Conceitos e Definições}

Por definição o *spread* bancário é obtido através da subtração percentual,
entre a taxa de aplicação incidente nas operações de crédito, e a taxa de
captação que remunera as aplicações financeiras, se configurando como a
diferença entre estes custos \cite{BCB:2000}. 

$$
Spread = Taxa de Aplicação - Taxa de Captação
$$


O *spread* bancário representa uma medida que sinaliza o desempenho dos bancos
\cite{levine:1997}. É considerado um indicador de eficiência da economia, no
sentido de favorecer o crédito e a atividade econômica. Em níveis elevados pode
desfavorecer o crédito destinado para produção e consumo produtivos e estar
associado com o fraco desempenho econômico \cite{WB:2005}. 

Os estudos em torno do *spread* bancário ocorrem em três óticas: evolução,
estrutura e determinantes (SOUZA (2014). Em Dick *apud* \cite{leal:2006} é
destacada a importância de distinguir a abordagem em torno da estrutura e
determinante do *spread* bancário, no sentido de complementariedade. O diagrama
na \autoref{fig:diagram} ilustra as óticas de estudo do *spread* bancário.

---
#(SOUZA (2014) *apud* \cite{timotio:2018}
---

\begin{figure}
\captionof{figure}{Diagrama de ilustração das vertentes de pesquisa do \emph{spread}}
![](12-exportedfigures/diagram.spread-1.png)
\label{fig:diagram}
\fonte{Desenvolvido com base nas fontes citadas}
\end{figure}

A abordagem em torno da evolução visa analisar o comportamento ao longo do
tempo, através de análises quantitativas e qualitativas, enquanto a ótica da
estrutura busca identificar e analisar os componentes de resultado envolvendo
receitas, despesas e provisões. Na abordagem sobre os determinantes é
vislumbrado identificar as variáveis que explicam as variações do indicador ao
longo dos períodos \cite{leal:2006}. 

Vem se tornando relevantes os estudos em torno da decomposição do *spread*
bancário. Entre os componentes explícitos estão a inadimplência, despesas
administrativas, impostos diretos e indiretos e margem de lucro dos bancos
conforme ilustrado abaixo \cite{BCB:2000}.


$$
Sprd=f(Ind, DA, II, ML, CP)
$$

* Sprd = *Spread*
* Ind = Inadimplência
* DA = Despesas Administrativas 
* II = Impostos Indiretos
* ML = Margem de Lucro
* CP = Custo de Captação

Esta configuração dos componentes, contemplando a margem de lucro, despesas e
riscos envolvidos nas operações de crédito vem desmistificar a comum abordagem
do *spread* como o rendimento auferido pelos bancos \cite{costa;nakane:2004}
Souza (2007) *apud* \cite{dantas:2012}. Desta forma se configurando como a
diferença entre o custos operacionais na ótica de precificação, que após
descontados, remontam o lucro do banco \cite{BCB:2016}.

Além da avaliação de seus componentes, o *spread* pode ser analisado
conjuntamente por três características: enquanto a abrangência da amostra,
conteúdo e origem da informação \cite{leal:2006}. 



A abrangência da amostra consiste nas especificidades das operações de crédito
das instituições e seu nível de agregação e granularidade
\cite{costa;nakane:2004}. Uma análise agregada dessa característica pode ser
dificultada pela existência de heterogeneidade do setor, ressaltando a
importância de realizar análises do *spread* bancário em diferentes
características e óticas \cite{block:2000}. 

A abordagem em torno do conteúdo está relacionada com os subcomponentes que
envolvem a receita e as despesas das intermediações financeiras, podendo
englobar, ou não, as tarifas e comissões sobre as taxas de captações e
aplicação \cite{block:2000}.

A origem da informação é analisada em dois cenários: *ex-ante* e *ex-post*
\cite{kunt:1999, levine:1997}. A perspectiva *ex-ante* se refere as
expectativas das instituições bancárias em relação ao mercado de crédito e os
riscos envolvidos, obtido por método de precificação envolvendo as taxas de
captação e empréstimo \cite{durigan:2018, leal:2006, dantas:2012}.

O *spread* *ex-ante*, por se tratar de um indicador de planejamento, refletindo
as expectativas das instituições bancárias em relação ao mercado, finda
demonstrando-se mais volátil, não representando as taxas efetivas realizadas.
As informações *ex-ante* são repassadas ao Banco Central que as divulgam
\cite{durigan:2018, leal:2006, dantas:2012}.

No *spread ex-post* as margens são obtidas mediante a apuração dos resultados
contábeis, através dos demonstrativos, considerando as receitas e custos
efetivos, implicando nas taxas de intermediação  e carteira realizadas pelas
instituições financeiras \cite{kunt:1999, durigan:2018}. Nesse sentido, em
termos médios, as taxas *ex-post* se demonstram mais estáveis \cite{leal:2006, dantas:2012}.

Reduções no *spread* *ex-post* não necessariamente significam aumento da
eficiência da intermediação financeira, pois podem estar associadas a uma
redução da inadimplência \cite{kunt:1999}. Como observado em
\textcite{klein:1971} e \textcite{ho-saunders:1981} o *spread* bancário é
determinado de acordo com as características e os riscos envolvidos nas
intermediações financeiras inerentes em cada estrutura de mercado. 

\section{Spread Bancário no Brasil}

No Brasil, a taxa de aplicação para crédito de recursos livres é pactuado entre
instituição e tomador. Somente as operações de crédito envolvendo recursos
direcionados são sujeitas à limites, não podendo exceder 12%a.a. mais a taxa
referencial de juros \cite{BCB:2016}. 

No mercado bancário Brasileiro, o modelo consolidado de mensuração do *spread*,
conforme \autoref{tab:spread.tb}, leva em consideração o saldo médio de capital
emprestado, e a diferença entre as receitas de aplicação e despesas de
captação, ocorrendo a classificação em *spread* bruto, direto e líquido
\cite{fipecafi:2005}

\begin{table}[b]
 \centering
   \caption{Esquema de obtenção do \emph{spread} mais adotado no mercado} 
    \label{tab:spread.tb}
     \begin{tabular}{l|c|c|c}
      \hline
                                           &   PJ   &   PF    & Total \\
       \hline
       Saldo Médio do Capital Emprestado   & 100.00 & 100.00  & 100.00 \\
       A — Receita de Aplicação Financeira & 9.4    & 16.5    & 12,7   \\
       B — Despesas de Captação            & (4.8)  & (4.9)   & (4.8)  \\   
       Spread Bruto                        & 4.6    & 11.6    & 7.9    \\
       Spread Direto                       & 3.2    & 7.6     & 5.3    \\
       Spread Líquido                      & 0.5    & 1.6     & 1.0    \\
       \hline
       \end{tabular}
\fonte{in \cite{fipecafi:2005}}
\end{table}

O Banco Central, em 1999, iniciou uma série de estudos e medidas com objetivo
de reduzir a taxa de juros e o *spread* realizados no setor bancário
Brasileiro, atuando na identificação e ajustes em variáveis econômicas
influentes. Entre as primeiras medidas estavam a redução da taxa de compulsório
para depósitos à vista e até a extinção para depósitos à prazo, redução do IOF
e a redução da Selic \cite{BCB:2000}.

\begin{figure}
\captionof{figure}{Evolução do \emph{spread} bancário Brasileiro até 2011}
![](12-exportedfigures/average spread-1.png)
\label{fig:spread2012}
\fonte{Desenvolvido a partir de dados do Banco Central}
\end{figure}

A \autoref{fig:spread2012} mostra a evolução do *spread* bancário Brasileiro
médio entre os anos de 1994 e 2012, chegando a atingir 146.44%, com
significativa queda ao longo desse período, atingindo 24.69% no final
do período. Esta série foi descontinuada em 2012, passando a ser utilizada nova
metodologia de cálculo.

O Banco Central, até 2007 utilizava metodologia para avaliação do spread
bancário contemplando somente os recursos livres, o que não vinha a
proporcionar uma avaliação mais aprofundada. Em 2008 houve uma modificação na
metodologia de decomposição do *spread*, alterando o cálculo do custo médio de
captação e detalhando classificações do crédito \cite{dantas:2012}

Para o custo médio de captação passou a se utilizar a taxa média ponderada
entre as taxas dos depósitos à prazo (CDB), em caderneta de poupança e à vista,
a participação dos custos efetivos dos recolhimentos compulsórios em detrimento
do custo de oportunidade \cite{dantas:2012}

O BACEN mantém atualmente duas séries para o indicador: spread médio das
operações de crédito (MOC) e Spread do Índice de Custo de Crédito (ICC). As
séries são disponibilizadas em termos totais e nas subdivisões de tipo de
recursos, tipo de crédito e tomador. 

Estas séries estatísticas representam estimativas baseadas nas informações
repassadas pelas instituições bancárias das taxas de juros das operações de
crédito e indicadores do mercado financeiro do custo médio do dinheiro para o
custo médio de captação \cite{BCB:2016}. 

A série do Spread médio das operações de crédito é calculada a partir da
diferença entre a taxa média de juros de novas operações de crédito no SFN e o
custo de captação referencial médio de operações de crédito livre, direcionado
e não rotativo podendo ser observados por tomador.

\begin{figure}
\captionof{figure}{Evolução do Spread médio das operações de crédito}
![](12-exportedfigures/spread 2019 moc-1.png)
\label{fig:spreadmoc}
\fonte{Desenvolvido a partir de dados do Banco Central do Brasil — Departamento de Estatísticas}
\end{figure}



A \autoref{fig:spreadmoc} mostra a visualização da evolução mensal do spread
médio das novas operações de crédito contratadas entre janeiro de 2013 e julho
de 2020. No período entre 2014 e 2017 se visualiza uma elevação de 10 p.p no
spread total, recuando 8 p.p a patamar próximo ao início do período. É possível
notar a grande disparidade entre os spread de recursos livres e direcionados. 

A série do Spread do ICC, considera a diferença entre o Índice de Custo de
Crédito — equivalente ao custo médio de juros das operações ativas da carteira
do SFN — e o custo de captação médio ponderado, levando em consideração
operações de crédito livre, direcionado e não rotativo, dividido em pessoa
física e jurídica.

\begin{figure}
\captionof{figure}{Evolução do Spread do Índice do Custo de Crédito}
![](12-exportedfigures/spread 2019 icc-1.png)
\label{fig:spreadicc}
\fonte{Desenvolvido a partir de dados do Banco Central do Brasil - Departamento de Estatísticas}
\end{figure}

Na \autoref{fig:spreadicc} pode ser visualizada a evolução do spread do ICC,
entre janeiro de 2013 e julho de 2020 com expressiva elevação entre 2014 e
2017, passando a decair até retormar a patamares similares ao início do
período. Também pode ser notado a significativa diferença entre os *spreads* de
recursos livres e direcionados.

O Indicador Custo de Crédito (ICC) consiste no custo médio de todas as
operações de crédito abertas — independentes do período em que foram
contratadas — que compõem a carteira de empréstimos, financiamentos e
arrendamento mercantil das instituições do Sistema Financeiro Nacional (SFN) \cite{BCB:2000}. 

\begin{figure}
\captionof{figure}{Evolução do Índice de Custo de Crédito (ICC)}
![](12-exportedfigures/ICC-1.png)
\label{fig:evicc}
\fonte{Desenvolvido a partir de dados do Banco Central do Brasil — Departamento de Estatísticas}
\end{figure}

A \autoref{fig:evicc} traz a visualização da evolução do Índice de Custo de
Crédito entre janeiro de 2013 e agosto de 2020, com máxima de 22.98% em
2017, com queda significativa a partir de 2020, chegando a atingir 17.93%
em agosto de 2020.

\section{Estudos anteriores}

Na literatura acadêmica não existe uma teoria formalizada acerca do *spread*
bancário \cite{timotio:2018}. Sendo verificados estudos empíricos que visam
classificar, analisar e identificar variáveis micro e macroeconômicas
influentes nesse indicador em diversas perspectivas.

A grande maioria dos estudos realizados no Brasil utilizam as medidas de
*spread* bancário divulgadas pelo Banco Central, que remetem a uma perspectiva
*ex-ante*, registrando as taxas planejadas na fase de concessão de crédito. E
para as variáveis explicativa a grande maioria utiliza indicadores
macroeconômicos \cite{dantas:2012}

No ano de 1994, \textcite{aronovich:1994} realizou estudo econométrico para
verificar a influência da inflação e nível de atividade econômica no *spread*
bancário ex-ante, encontrando relação direta do *spread* com a inflação e
indireta com o nível de atividade econômica.

Em estudo dos determinantes macroeconômicos do *spread* bancário ex-ante,
\textcite{oreiro-2006} utilizou regressão múltipla para identificar as
variáveis influentes (modelo abaixo). O estudo chegou ao resultado que alta
volatilidade e as taxas da Selic são um dos principais determinantes desse
indicador no setor bancário Brasileiro, identificando também a significância do
nível de atividade industrial.

$$
ln spread = \beta_0 trend + \beta_1 ln selic + \beta_2 ln adm + \beta_3 ln risk + \beta_4 ln imp + \beta_5 ln comp
$$

* $\beta_i$ (i= 0,..., 5) = parâmetros estimados;
* trend = tendência determinista que controla outras variáveis;
* selic = taxa Selic;
* adm = despesa administrativas;
* risk =  proxy para o risco de crédito (spread do C-Bond sobre o rendimento dos títulos do Tesouro Americano de mesma maturidade;
* imp são impostos indiretos;
* comp = compulsório incidente sobre os depósitos à vista.

Em análise dos determinantes do *spread* bancário ex-post,
\textcite{dantas:2012} utilizou variáveis explanatórias microeconômicas de cada
instituição, por meio de dados em painel dinâmico, entre janeiro de 2000 e
outubro de 2009, encontrando níveis significativos e diretos com o risco de
crédito, grau de concentração e nível de atividade econômica, e indireta com a
participação da instituição no mercado, não encontrando níveis significativos
com origem de capital e tipo de organismo. 

Outra observação em \textcite{dantas:2012} foi a forte relação do *spread*
*ex-post* no momento atual com o momento anterior imediato, e que as
instituições tendem a cobrar maiores taxas, quando maior o nível de
concentração do mercado, não encontrando significância da Selic na determinação
deste indicador. 

Em \textcite{almeida:2013} foi desenvolvido modelo de dados macroeconômicos e
microeconômicos em painel, de 64 instituições bancárias para avaliação de
determinantes do *spread* *ex-post* no Brasil entre o primeiro trimestre de
2001 e o segundo trimestre de 2012, encontrando como relevantes 
as despesas administrativas, receita de serviços, índice de cobertura, PIB e o
grau de concentração.

Em \textcite{durigan:2018} foi realizada análise dos fatores macroeconômicos e
indicadores industriais que influenciam o *spread* bancário ex-ante, através de
análise de regressão linear multivariada utilizando 18 variáveis em quatro
modelos. Chegando a conclusão que o aumento da atividade industrial, a redução
do desemprego e o consumo atuam na diminuição do *spread* bancário. 

Os modelos desenvolvidos por \textcite{durigan:2018} demonstraram que há uma
relação significativa e direta entre *spread* e: inadimplência, IPIs (bens de
capital, intermediários, semiduráveis, não duráveis e consumo duráveis), Selic,
PIB, desemprego e o EMBI+ (medida de taxa de risco-país). As relações indiretas
com o *spread* foram encontradas: no IPI de bens de consumo e geral, IPCA,
saldo da carteira de crédito e índice de vendas no varejo.

O estudo de \textcite{timotio:2018} teve foco em abordagem microeconômica, ao
buscar identificar a influência das variações de indicadores
financeiros-contábeis no *spread* em 26 instituições bancárias,
através de regressão em dados em painel. Encontrando relações significativas
diretas com a alavancagem financeira, retorno sobre o patrimônio líquido,
EBITDA, Ativo Total e eficiência.

No modelo de \textcite{timotio:2018} foi encontrada relação significativa e
indireta do *spread* com a participação de capital de terceiros e, não
identificada relação significativa com a composição do endividamento, retorno
sobre ativos e a liquidez corrente.

De acordo com \textcite{durigan:2018, dantas:2012}, existem poucos estudos
inclinados para os determinantes do *spread* *ex-post* no Brasil, onde
identificaram o estudos de Guimarães (2002). Foram identificados ainda os
estudos acerca do *spread* ex-pots de Fipecafi (2004) *apud*
\textcite{dantas:2012} e Matias (2006) *apud* \textcite{leal:2006} 

Em \textcite{fipecafi:2005} foi realizado estudo de apuração de resultados,
ex-post, baseado em demonstrações contábeis entre o 1º semestre de  2005 de
instituições que representavam 75,8% do ativo total e 76% do total de crédito.
Chegando a um resultado médio de *spread* bruto de 7,6% para pessoa física e
3,2% para pessoa jurídica, e *spread* líquido de 1,6% para pessoa física e 0,5%
para pessoa jurídica.

A \autoref{tab:exantea} e a \autoref{tab:exanteb} trazem o resumo dos
principais estudos empíricos sobre *spread* bancário ex-ante no Brasil, com
resultados obtidos através de modelagem econométrica com utilização de
regressão, tomando variáveis micro e macroeconômicas como explanatórias e
demonstrando a relação com o spread ex-ante. 

\begin{table}
\caption{Resumo de estudos sobre o \emph{spread ex-ante} no Brasil — Parte 1}
<table class="table" style="font-size: 10px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variável </th>
   <th style="text-align:left;"> KOYAMA e NAKANE (2001a e 2001b) </th>
   <th style="text-align:left;"> AFANASIEFF, LHAGER e NAKANE (2001) </th>
   <th style="text-align:left;"> AFANASIEFF, LHAGER e NAKANE (2002) </th>
   <th style="text-align:left;"> BIGNOTTO e RODRIGUES (2006) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Custos Administrativos </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IGP </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> - </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Impostos Indiretos </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Requerimento de Reserva </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Selic </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Spread Over Treasury </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Produto Industrial </td>
   <td style="text-align:left;width: 2cm; "> - </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Ativo Total </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Bancos Estrangeiros </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> - </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Captação sem juros </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Compulsório </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Crescimento PIB Industrial </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> - </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPCA </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> - </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Liquidez </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Market Share </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> - </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Receita Serviços </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
   <td style="text-align:left;width: 2cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Risco Crédito </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Risco Juros </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Volatilidade da Selic </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; "> - </td>
   <td style="text-align:left;width: 2cm; ">  </td>
   <td style="text-align:left;width: 2cm; ">  </td>
  </tr>
</tbody>
</table>
\label{tab:exantea}
\fonte{Desenvolvido a partir das fontes citadas}
\end{table}

Entre os estudos da \autoref{tab:exantea} e \autoref{tab:exanteb} que avaliaram
a Selic e as despesas administrativas, há um consenso que estas variáveis
possuem uma relação de determinação direta com o *spread ex-ante*. Em três
estudos que avaliaram impostos indiretos e receita de serviços foi encontrada
relação direta com o *spread ex-ante*.

\begin{table}
\caption{Resumo de estudos sobre o \emph{spread ex-ante} no Brasil — Parte 2}
<table class="table" style="font-size: 10px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variável </th>
   <th style="text-align:left;"> OREIRO et al. (2006) </th>
   <th style="text-align:left;"> DURIGAN (2018) </th>
   <th style="text-align:left;"> ARONOVICH (1994) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Selic </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Produto Industrial </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Atividade Econômica </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> - </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Desemprego </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> EMBI </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Inadimplência </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Índice Volume Vendas Varejo </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> - </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPCA </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> - </td>
   <td style="text-align:left;width: 3cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPI bcd </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPI Bens de Capital </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPI Bens de Consumo </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> - </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPI Bens i </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPI bsd </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPI Geral </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> - </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> IPIad </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> PIB </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Saldo Carteira Crédito RL </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> - </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Volatilidade da Selic </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
</tbody>
</table>
\label{tab:exanteb}
\fonte{Desenvolvido a partir das fontes citadas}
\end{table}

Ainda analisando a \autoref{tab:exantea} e a \autoref{tab:exanteb}, dois
estudos chegaram a resultados diferentes para os efeitos da volatilidade da
Selic no *spread ex-ante*. Os efeitos do IPCA foram testados em três estudos,
os dois mais recentes encontraram uma relação indireta com a variável
dependente. Em três estudos que examinaram o IGP, dois encontram relação
direta, sendo que um deles foi repetido em período anterior e encontrou relação
indireta.

\begin{table}
\caption{Resumo de estudos sobre o \emph{spread ex-post} no Brasil}
<table class="table" style="font-size: 10px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Variável </th>
   <th style="text-align:left;"> GUIMARÃES (2002) </th>
   <th style="text-align:left;"> DANTAS (2012) </th>
   <th style="text-align:left;"> ALMEIDA (2013) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Custos Administrativos </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Impostos Indiretos </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> Não significativo </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Requerimento de Reserva </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Atividade Econômica </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Bancos Estrangeiros </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Caixa.Depósitos </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Grau Concentração </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Liquidez </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> Não significativo </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Market Share </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> - </td>
   <td style="text-align:left;width: 3cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> PIB </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Receita Serviços </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> - </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 4cm; font-weight: bold;"> Risco Crédito </td>
   <td style="text-align:left;width: 3cm; ">  </td>
   <td style="text-align:left;width: 3cm; "> + </td>
   <td style="text-align:left;width: 3cm; "> Não significativo </td>
  </tr>
</tbody>
</table>
\label{tab:expost}
\fonte{Desenvolvido a partir das fontes citadas}
\end{table}

A \autoref{tab:expost} traz o resumo dos estudos empíricos dos determinantes do
*spread ex-post* no Brasil, por meio de modelos econométricos utilizando
regressão. Destaca-se que, entre os estudos, dois encontraram significância de
influência direta com o grau de concentração e o *spread* ex-post. E dois dos
estudos chegaram a resultados opostos para os de posição de market share e a
variável dependente.

Este capítulo verificou os principais conceitos, características e estudos
acerca do *spread* bancário no Brasil, identificando as óticas de análise por
evolução, composição e determinantes através da abrangência da amostra,
conteúdo e origem da informação. E que as maiores limitações estão na
dificuldade de desagregação de informações para uma análise mais aprofundada.

No próximo capítulo, será descrita a metodologia de trabalho com a formulação
das hipóteses baseado nas informações e levantamentos dos capítulos anteriores,
nos estudos pesquisados e na teoria econômica, através da coleta, tratamento e
análise de dados. 


 





<!--chapter:end:03-spread.Rmd-->

---
#\part{Desenvolvimento}
---

\chapter{Metodologia}


<!--chapter:end:04-method.Rmd-->

\chapter{Aplicação}

\chapter{Resultados}


<!--chapter:end:05-application.Rmd-->

\phantompart

\chapter*[Conclusão]{CONSIDERAÇÕES FINAIS}
\addcontentsline{toc}{chapter}{CONSIDERAÇÕES FINAIS}

<!--chapter:end:06-summary.Rmd-->

\postextual

\addtocontents{toc}{\vspace{-2pt}}

---
#\SingleSpacing


#\printbibliography[heading=bay

---

<!--chapter:end:07-references.Rmd-->

\postextual

\addtocontents{toc}{\vspace{-2pt}}



<!--chapter:end:08-aftertexts.Rmd-->

\ifthenelse{\equal{\terApendice}{Sim}}
{\begin{apendicesenv}

\renewcommand{\thechapter}{\arabic{chapter}}

\chapter{Replicação de Estudos}
\section{}
 
\end{apendicesenv}
}{}

<!--chapter:end:09-appendix.Rmd-->

\ifthenelse{\equal{\terAnexo}{Sim}}{
\begin{anexosenv}

\renewcommand{\thechapter}{\arabic{chapter}}
        
\chapter{Cálculo Resultados}

\lipsum[31] 

\lipsum[32] 

\end{anexosenv}
}{}


\ifthenelse{\equal{\terIndiceR}{Sim}}{
\phantompart
\printindex
}{}


<!--chapter:end:10-attachment.Rmd-->

