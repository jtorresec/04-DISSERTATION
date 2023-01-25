--- 
date: 2021
author: "Jackson da Silva Torres"
documentclass: abntex2
classoption: [12pt, openright, oneside, a4paper, chapter=TITLE, section=TITLE, subsection=TITLE, subsubsection=TITLE, english, french, spanish, portugues, sumario=tradicional]
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
fontsize: 12pt
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
\parindent 1.50cm

\DoubleSpacing

\chapter[INTRODUÇÃO]{INTRODUÇÃO}

\section{Contextualização}

No processo histórico, ao longo dos séculos, os instrumentos financeiros passaram por profundas modificações e evoluções, assumindo papel determinante na geração e acúmulo de riqueza para as famílias e nações. Nesse contexto surgiram e se consolidaram as instituições bancárias, atuando essencialmente na segurança de depósitos e na oferta de crédito.

Na contrapartida destas atividades, as instituições bancárias são remuneradas basicamente de duas formas. A primeira delas é através de taxas sobre os serviços envolvendo a custódia. A segunda se dá pelo resultado da diferença entre a taxa cobrada no oferecimento de crédito e a taxa que remunera os recursos captados e utilizados para empréstimo, caracterizada como o *spread* bancário \cite{leite:1996} \cite{campello:2005} \cite{neves:2007}.

A medida que a oferta de crédito desponta como um fator fundamental para o desenvolvimento econômico de longo prazo, incentivando empreendimentos produtivos, contribuindo com a geração de emprego, renda e lucros, o *spread* bancário passa a ser um indicador estratégico para determinação do nível de desenvolvimento dos países e regiões \cite{WB:2005} \cite{levine:1997}.

A primeira via da importância do *spread* bancário está relacionada com a
solidez do sistema financeiro. O nível deste indicador deve ser suficiente para
garantir lucros atrativos, fazendo que as instituições mantenham suas
atividades e que novas tenham interesse em entrar no mercado, resultando em um
setor forte, com segurança e liquidez \cite{levine:1997} \cite{dantas:2012} \cite{leal:2006}.

A segunda via remete a relação entre o *spread* e o nível de atividade
econômica. Segundo estudos recentes, um elevado nível de *spread* bancário
desfavoreceria o crédito produtivo e consequentemente o nível de atividade
econômica, impactando no crescimento e desenvolvimento do país ou região \cite{WB:2005} \cite{dantas:2012} \cite{leal:2006}.

Tais premissas são sustentadas pelo Fundo Monetário Internacional (FMI) e Banco Mundial (BM), que realizam e incentivam estudos sobre o indicador a nível mundial. A grande maioria dos estudos demonstram a relação inversa entre a taxa de *spread* bancário e os indicadores de desenvolvimento dos países e regiões \cite{WB:2005}.

Estudos constataram que a América Latina possui as maiores taxas de juros, bancos mais ineficientes, implicando assim em níveis de *spread* elevados \cite{dantas:2012}. O caso brasileiro é destacado historicamente como um cenário ainda mais crítico, com níveis de lucro considerados elevados, afetando principalmente o setor produtivo \cite{dantas:2012}.

Entre diversos países estudados, desde a década de 1990, é evidenciado o caso brasileiro com elevados níveis de *spread* bancário, baixa relação entre crédito e PIB e cenários de crescimento econômicos instáveis e considerados baixos \cite{levine:1997, matos:2003}. Mesmo com recentes modificações no cenário, o  caso brasileiro desperta constantes iniciativas de estudos.

Durante a década de 1990, o *spread* bancário brasileiro esteve superior a 50% a.a., enquanto na América Latina o observado foi entre 10% e 15% a.a. A relação crédito/PIB no Brasil, em 2003, era de 23%, considerado muito baixo em comparação ao Chile com 68,5%, Uruguai com 64,3%, Estados Unidos com 60,8%, Japão com 64,3%, Coréia com 98,9% e Europa com 140,6% \cite{camargo:2009, singh:2005}.

Observa-se assim, a relevância do estudo acerca das variáveis que influenciam o *spread* bancário *ex-post* no Brasil. Sendo assim, esta pesquisa parte das indagações: (1) Quais variáveis endógenas e exógenas exercem influência siginificativa no *spread* bancário *ex-post* e (2) como a variação dos componentes do *spread ex-post* afetam a rentabilidade dos bancos no Brasil?

\section{Objetivos}

\subsection{Objetivo Geral}

Este estudo buscará verificar quais variáveis microeconômicas e macroeconômicas exercem influência significativa sobre o *spread ex-post* e como estas afetaram a rentabilidade das instituições bancárias brasileiras, entre os anos de 2001 e 2020.

\subsection{Objetivos Específicos}

1. Realizar levantamento teórico e bibliográfico sobre setor bancário e estudos sobre o *Spread* bancário no Brasil; 
2. Identificar e testar variáveis macroeconômicas e microeconômicas enquanto componentes implícitos e explícitos de determinação do *spread* bancário *ex-post*;
4. Analisar como as variações dos componentes do *spread* bancário afetaram a rentabilidade dos bancos, no período de 2001 a 2020.

\section{Justificativa teórica e prática}

A medida que o nível de dinamismo da economia se eleva, ocorrendo evoluções e modificações estruturais em espaços de tempos mais curtos, o setor financeiro deve acompanhar tais perspectivas, devido sua importância no processo, principalmente no que se refere ao oferecimento de novos produtos, ampliação de crédito, oportunidades para investidores, solidez e liquidez ao sistema.

E nesse cenário dinâmico e evolutivo, o *spread* bancário desponta como o indicador que capta o nível de desenvolvimento do sistema financeiro, no sentido de equacionar a relação entre a remuneração dos superavitários e os juros cobrados dos deficitários de capital, englobando os custos de intermediação, com maior relevância aos créditos destinados a empreendimentos produtivos.

Nesse sentido, os estudos acerca do *spread* bancário se tornam necessários e importantes, diante da perspectiva do dinamismo e constantes transformações na economia. O caso brasileiro demonstra ser ainda mais relevante, por se colocar em posição considerada peculiar, diante os históricos de baixo crescimento e desenvolvimento e um setor bancário concentrado com elevados níveis de *spread*.

Foi verificado o panorama das publicações de pesquisas relacionadas ao setor bancário no brasil, através da plataforma Capes, entre os anos 2000 e 2020
\footnote{Foram utilizados operadores booleanos em inglês: banking(structure or
market or sector or industry) and brazil* e revisados por pares.}, remontando um total de 4.512 publicações, indicando a relevância do tema. Enquanto as pesquisas relacionadas especificamente com o *spread* bancário brasileiro, através da plataforma Capes foram identificados 3.435 estudos entre os anos de 2000 e 2020 \footnote{Foram utilizados os operadores boleanos em
inglês (bank or banking) and spread and brazil, revisados por pares.}, o que também vem destacar a importância da temática na literatura acadêmica.

Mesmo com um número considerado de estudos sobre o setor bancário brasileiro e outros diversos citando o *spread* bancário, ainda se fazem necessárias novas iniciativas, diante a importância deste indicador na solidez do setor financeiro e seu papel no desenvolvimento econômico, e principalmente por ainda existirem incongruências, divergências e lacunas a serem explanadas.

Este trabalho atuará em duas perspectivas que tangem os estudos acerca do *spread* bancário. A primeira está moldada na consensual importância do *spread* no processo de desenvolvimento econômico via concessão de crédito, o que traz a importância de verificar suas variáveis determinantes. A segunda parte da importância de um nível de rentabilidade bancária proporcione um sistema financeiro sustentável.   

\section{Estrutura da dissertação}

A presente dissertação estará estruturada em cinco capítulos. Este primeiro apresenta a contextualização, objetivos, justificativa e a presente estrutura do trabalho. A estrutura proposta visa sintetizar as principais questões sobre o tema proposto com ótica direcionada para a proposição e objetivos, bem como nortear o andamento da pesquisa.  

No segundo capítulo serão realizados os levantamentos teóricos a respeito dos conceitos, aspectos fundamentais e dados amplos do setor bancário e *spread* no Brasil, por meio de pesquisa bibliográfica e busca em bancos de dados.

O terceiro capítulo terá como anseio, identificar e testar a variáveis macroeconômicas e microeconômicas que se configuram como componentes implícitos e explícitos do *spread* bancário *ex-post*, e como a variação destes componentes afetam a rentabilidade dos bancos. 

O quarto capítulo almeja explanar e analisar, diante as premissas empregadas, os resultados obtidos na pesquisa, visando descrever e embasar as relações entre as variáveis, confrontando com as pesquisas identificadas. Por fim serão realizadas as considerações finais, buscando contextualizar os resultados obtidos com o cenário e os estudos identificados e sugerindo estudos complementares.

O próximo capítulo irá abordar sobre aspectos conceituais, teóricos, técnicos e históricos do setor e *spread* bancário brasileiro, buscando demonstrar as principais características deste mercado, através da descrição e demonstração da evolução da estrutura e seus principais indicadores.

<!--chapter:end:01-intro.Rmd-->

\textual
\pagestyle{simple}

\chapter{Referencial Teórico}

\section{Setor Bancário no Brasil}

Neste capítulo serão abordados os conceitos, características, composição e
evolução do setor bancário brasileiro, com objetivo de identificar variáveis
quantitativas e qualitativas relevantes para as análises dos componentes e
determinantes do *spread* bancário. A primeira parte trará um breve histórico do mercado bancário, e a segunda parte sobre conceitos e evolução de dados.

O sistema financeiro exerce papel socioeconômico fundamental, atuando na intermediação, promoção da circulação do fluxo de crédito, disponibilização de meios de pagamentos e opções para alocação de recursos, investimentos, seguros, transações cambiais, operações de proteção de capital, guardando relação com grau de desenvolvimento econômico de um país ou região \cite{maffili:2009}. 

Devido a importância de um sistema financeiro sólido no desenvolvimento econômico, o lucros auferidos no setor despertam constantes atenções, girando em torno dos riscos que envolvem descontinuidade e insolvência \cite{couto:2002}. De acordo com Freitas e Khöler (2009) *apud* \textcite{dantas:2012}, o Brasil apresenta uma conjuntura bancária peculiar em comparação a outros países, principalmente no que se refere aos lucros.

Esta observação remete ao conceito que o desenvolvimento do setor bancário em cada país e região pode ser influenciado por diversos fatores endógenos — relacionados com a gestão, tecnologia e eficiência de cada instituição — e exógenos — envolvendo a regulação e as conjunturas econômica e social \cite{rover:2011}. Nesse sentido os aspectos políticos, econômicos, sociais e culturais se tornam determinantes para essa avaliação.

A história bancária no Brasil tem sua "pedra fundamental" com a instituição, em 1808, do Banco do Brasil, em consequência da chegada da família real portuguesa e as medidas de aberturas dos portos e acordos comercias. A instituição teve suas atividade encerradas em 1829, devido a uma série de prejuízos com exportações e o retorno de D. João VI à Portugal, levando maior parte do lastro metálico \cite{camargo:2009}.

No ano de 1833 o Banco do Brasil foi recriado, porém não ocorreram os aportes de capital necessários para instalação e operação. O ano de 1836 foi marcado pela fundação do Banco do Ceará, o primeiro banco comercial privado, que operou até 1839. O Banco do Brasil foi constituído pela terceira vez, agora sob controle privado, no ano  de 1851 \cite{camargo:2009}. 

Em 1853 o Banco do Brasil realizou a primeira operação fusão do país, com o Banco Comercial do Rio de Janeiro, criado em 1838, considerada a quarta versão deste instituição \cite{camargo:2009}. O Banco do Brasil da atualidade tem sua origem em 1906, resultante do decreto nº 1.455 de 30/12/1905, que autorizou a fusão do Banco do Brasil de 1853 com o Banco da República do Brasil \cite{camargo:2009} \cite{Lei:1455:1905}. 

No ano de 1863  forma instalados o primeiros bancos estrangeiros, sendo eles o London & Brazilian Bank e The Brazilian and Portuguese Bank, ambos com sede no Rio de Janeiro. Posteriormente os bancos estrangeiros passaram a dominar o mercado. A conjuntura nesse momento ainda não se configurava como sistema bancário desenvolvido, em termos de integração entre as instituições \cite{camargo:2009}.

A Lei Bancária de 1921 trouxe um grande movimento para nacionalização bancária e construção de um efetivo sistema financeiro. O bancos estrangeiros tiveram suas atividades limitadas, passando a sererem proibidas pelas Constituições de 1934 e 1937, voltando a serem autorizadas a funcionar pela Constituição de 1946, posição reitarada pela Constituição de 1964 \cite{camargo:2009}.

O movimento para criação e fortalecimento do sistema bancário nacional iniciado na década de 1920 perdurou até o ano de 1964 com a reforma financeira que resultou no Sistema Financeiro Nacional (SFN), inserido na Constituição de 1964. Esse período foi marcado pela criação de mecanismos de controle e fiscalização, fomento e expansão da rede bancária \cite{camargo:2009}.

Entre o período de 1964 a 1980 foram implementadas diversas reformas, criações de mecanismos, instituições e subsistemas. Foram definidas modalidades e atividades, onde os Bancos Comerciais se limitariam a operações de créditos de curto prazo, enquanto os bancos de investimento e desenvolvimento atuariam na concessão de crédito de longo prazo \cite{camargo:2009}. 

O setor bancário brasileiro passou por significativas transformações em sua estrutura no final da década de 1980 e ao longo da década de 1990. Estas modificações ocorreram em grande parte como reflexo às mudanças internacionais, ao processo de abertura comercial e financeira que se iniciou no Brasil, e das próprias modificações das conjunturas econômica e social \cite{camargo:2009}.

Alguns dos efeitos da abertura comercial-financeira e das modificações na
estrutura bancária provenientes das medidas governamentais foram o aumento da
participação de instituições estrangeiras no país e, um consistente processo de
fusões e aquisições, de ambas as origens de capital, que resultou em
considerável elevação do grau de concentração \cite{camargo:2009}.

Entre as principais mudanças iniciadas na década de 1980 está a reforma bancária ocorrida em 1988, advindas da Constituição e principalmente através da Resolução nº 1.524, que instituiu diversas medidas de desregulamentação, entre elas a extinção da necessidade de carta-patente para constituição de Bancos Múltiplos \cite{Res:1524:1988}. 

Mesmo com as limitações impostas pela Constituição de 1988 \cite{constituicao:1988} para instalação de bancos estrangeiros, não houveram restrições para que ocorressem aumentos na participação de capital estrangeiro em bancos nacionais, comportamento esse que se tornou até os dias atuais a principal forma de participação desta instituições no Brasil \cite{camargo:2009}. 



No Brasil, o Sistema Financeiro Nacional (SFN) consolidado é composto por um conjunto de instituições e subsistemas com a divisão em Bancos e caixas econômicas, Corretoras de Câmbio, Fintechs, Administradora de consórcios, Cooperativa de crédito, Instituições de pagamento, Corretora e a distribuidora e outras instituições não bancárias \cite{Lei:4595:1964}.

O setor bancário está sob hierarquia normativa do Conselho Monetário Nacional (CMN) e supervisão do Banco Central do Brasil (BACEN). As instituições que formam o setor bancário assumem o papel de operadoras no mercado de crédito, atuando como intermediadoras financeiras junto às pessoas físicas e jurídicas, podendo ser de caráter público ou privado \cite{Lei:4595:1964}.



\begin{table}
\caption{Composição do setor bancário brasileiro por tipo de iniciativa  — Dezembro 2019}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Tipo </th>
   <th style="text-align:left;"> Participação </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 8cm; "> Privado </td>
   <td style="text-align:left;width: 7cm; "> 93% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Público </td>
   <td style="text-align:left;width: 7cm; "> 7% </td>
  </tr>
</tbody>
</table>
\label{tab:iniciativa}
\fonte{Desenvolvido pelo autor, com dados do Banco Central}
\end{table}

As modalidades de instituições no setor bancário brasileiro são os Bancos
Comerciais, Bancos de Investimentos, Bancos de Desenvolvimento, Bancos de
Câmbio, Bancos Múltiplos e Caixas Econômicas. Atualmente na modalidade de Caixas Econômicas somente a Caixa Econômica Federal está em funcionamento
\cite{Lei:4595:1964} \cite{Res:2099:1994} \cite{Res:2624:1999} \cite{Res:394:1976} \cite{Res:3426:2006} \cite{DL:759:1969}.

Na \autoref{tab:banks} é possível verificar, no ano de 2019, a quantidade de instituições por modalidade com uma massiva concentração em bancos múltiplos, com 76%,3 de participação, onde apenas 11,5% das instituições bancárias operam exclusivamente com carteira comercial, 6,3% exclusivamente com investimento, 2,89% em câmbio, 2,31% em desenvolvimento, e a Caixa econômica Federal.

\begin{table}
\captionof{table}{Composição do setor bancário brasileiro por segmento em dezembro de 2019}
<table class="table" style="font-size: 10px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Segmento </th>
   <th style="text-align:right;"> Quantidade </th>
   <th style="text-align:left;"> Participação </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 5cm; "> Banco Múltiplo </td>
   <td style="text-align:right;width: 4cm; "> 132 </td>
   <td style="text-align:left;width: 5cm; "> 76.30% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5cm; "> Banco Comercial </td>
   <td style="text-align:right;width: 4cm; "> 20 </td>
   <td style="text-align:left;width: 5cm; "> 11.56% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5cm; "> Banco de Investimento </td>
   <td style="text-align:right;width: 4cm; "> 11 </td>
   <td style="text-align:left;width: 5cm; "> 6.36% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5cm; "> Banco de Câmbio </td>
   <td style="text-align:right;width: 4cm; "> 5 </td>
   <td style="text-align:left;width: 5cm; "> 2.89% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5cm; "> Banco de Desenvolvimento </td>
   <td style="text-align:right;width: 4cm; "> 4 </td>
   <td style="text-align:left;width: 5cm; "> 2.31% </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 5cm; "> Caixas Econômicas </td>
   <td style="text-align:right;width: 4cm; "> 1 </td>
   <td style="text-align:left;width: 5cm; "> 0.58% </td>
  </tr>
</tbody>
</table>
\label{tab:banks}
\fonte{Desenvolvido com dados do Banco Central}
\end{table}

Entre as características gerais na formalização das instituições bancárias, estão a obrigatoriedade de serem instituídas como sociedades anônimas, possuirem em sua denominação as nomenclaturas: banco, banco de investimento, banco de desenvolvimento, banco de câmbio, caixa econômica, conforme sua categoria \cite{Lei:4595:1964} \cite{Res:2099:1994} \cite{Res:2624:1999} \cite{Res:394:1976} \cite{Res:3426:2006} \cite{DL:759:1969}. 

Os Bancos Comerciais são instituições financeiras de caráter público ou privado, atuando na intermediação de recursos financeiros de curto e médio prazo para financiamento de atividades comerciais, industriais, serviços para pessoas físicas e terceiros, realizando captações através de operações de depósitos a vista de livre movimento e depósitos a prazo \cite{Res:2099:1994}.

Na modalidade de Bancos de Investimento, as instituições devem possuir caráter privado, podendo operar participações temporárias em sociedades, financiamentos produtivos para ativo fixo e capital de giro e gestão de recursos de terceiros. Realizam captação através de depósitos a prazo, repasses externos e internos e comercialização de cotas de fundos de investimentos que administram \cite{Res:2624:1999}.

O Bancos de Desenvolvimento são instituições de caráter público, de controle federal ou estadual, com foco em financiamento de atividades que promovam o desenvolvimento econômico regional no médio e longo prazo, realizando operações passivas de depósitos a prazo, recursos externos, endossos hipotecários e operações ativas de empréstimos e financiamentos ao setor privado \cite{Res:394:1976}. 

Os Bancos Múltiplos se caracterizam por instituições financeiras que podem assumir caráter público ou privado, com a autorização para realizarem operações ativas e passivas por meio do acúmulo de múltiplas carteiras, sendo elas a comercial, investimento, desenvolvimento, crédito imobiliário, arrendamento mercantil e crédito, financiamento e investimento \cite{Res:2099:1994}.  

Em sua composição os Bancos Múltiplos são obrigados a assumir no mínimo duas carteiras, sendo que de forma obrigatória, uma delas deve ser ou a carteira comercial ou a de investimento. As que optarem por carteira comercial podem realizar captação de recursos via depósito a vista, e somente os Bancos Públicos podem acumular a carteira de desenvolvimento \cite{Res:2099:1994}. 

Os Bancos de Câmbio, são instituições financeiras que possuem autorização para realizar operações de compra e venda de crédito cambial. Entre as operações de crédito estão o financiamento de exportações e importações e antecipação mediante contratos cambiais. Podem captar depósitos em contas com movimentação restrita e sem remuneração, exclusivo às operações cambiais \cite{Res:3426:2006}.

A Caixa Econômica Federal (CEF), fundada em 1861, e regulamentada pelo Decreto-Lei nº 759 de 1969 é uma empresa pública subordinada ao Ministério da Economia, com operações similares a de um Banco Comercial, priorizando projetos e programas relacionados a área social e infraestrutura, detendo o monopólio  sobre o penhor de bens pessoais e venda de bilhetes de loteria. \cite{DL:759:1969}. 

A CEF atua com operações de crédito ao consumidor, para financiamento de bens
de consumo duráveis, operações de garantia de penhor industrial e caução de
títulos.  É integrante do Sistema Financeiro da Habitação (SFH) e Sistema
Brasileiro de Poupança e Empréstimo (SBPE), além da detenção centralizado do
recolhimento e aplicação dos recursos do FGTS \cite{DL:759:1969}.

A \autoref{fig:segmento} demonstra a evolução número de instituições bancárias
por segmento entre 1978 à 2019, podendo ser visualizada uma mudança na
composição da estrutura, com significativo aumento de instituições aderindo a
modalidades de múltiplas carteiras \footnote{As primeiras instituições com
carteira múltipla começaram a operar no ano de 1988} e redução de instituições que operam exclusivamente com carteira comercial e exclusivamente com carteira
de investimento.

\begin{figure}
\captionof{figure}{Evolução do setor bancário brasileiro por segmento}
![](12-exportedfigures/bank evolution-1.png)
\label{fig:segmento}
\fonte{Desenvolvido a partir de dados do Banco Central}
\end{figure}

A observação sobre o aumento da concentração bancária no Brasil, realizada por
\textcite{camargo:2009}, pode ser visualizada na \autoref{fig:concentracao}.
Entre as metades das décadas de 1980 e 1990, com redução da concentração,
levando em consideração o número de instituições. Esse cenário passou se
inverter a partir de 1994, chegando em 2019 a um nível aproximado ao observado
no início da década de 1980.

\begin{figure}
\captionof{figure}{Evolução da quantidade de instituições no setor bancário brasileiro}
![](12-exportedfigures/concetration-1.png)
\label{fig:concentracao}
\fonte{Desenvolvido pelo autor, com dados do Banco Central}
\end{figure}

O aumento da concentração bancária pode ser prejudicial ao crescimento econômico, uma vez que, com maior participação no mercado, as instituições bancárias acabam por obter a prerrogativa de determinar os preços de juros e serviços, comportamento este observado pelos autores Strachman e Vasconcelos *apud* \textcite{camargo:2009} e \textcite{klein:1971}.

Segundo \textcite{camargo:2009} e \textcite{dantas:2012}, por outra perspectiva, o ganho de escala, em um cenário de aumento da participação de mercado das instituições, refletindo nas suas operações de crédito e redução de custos operacionais atuaria melhorando a remuneração dos depósitos e refletindo na redução dos juros finais pagos pelos clientes.

Outra possível tendência para a concentração bancária seria a redução do risco
das operações, implicando em redução de custos, obtida por meio expansão
geográfica, setorial e de produtos financeiros. Porém os possíveis efeitos da
concentração dependem de uma série de condições, principalmente em torno da
eficiência e do nível de concorrência no mercado \cite{camargo:2009}.

Entre os principais indicadores para medir a concentração de mercado está o índice Herfindahl–Hirschmanahl(HHI)\footnote{Desenvolvido pelos economistas Orris C. Herfindahl e Albert O. Hirschman, é utilizado amplamente para medidas de regulação da concorrência e leis antitrust}, refere-se a uma medida de concentração de mercado que mede a participação de uma determinada firma no mercado do qual participa. É obtida pela somatória quadrática da parcela de mercado a ser considerada, variando entre $1/N$ e $1$.
$$
HHI = \sum_{i=1}^{N}q_i^2
$$
A versão normalizada do HHI traz uma variação entre $0$ e $1$, perdendo em seu resultado a captação diante o número de firmas:
$$
HHIN = \frac{\frac{HHI - 1}{N}}{\frac{1-1}{N}}
$$
A versão decomposta do HHI avalia a assimetria da concentração de mercado inserindo um componente de variabilidade das participações das firmas, assim se verifica se as firmas possuem uma participação de mercado simétrica resultando em $HHIN = 0$ e $HHI= 1/N$.
$$
HHID = \frac{1}{N} + N\frac{\sum_{i=1}^{N}(\frac{q_i - 1}{N})^2}{N}
$$

A elevação da participação estrangeira no setor bancário brasileiro durante a década de 1990, evidenciado por \textcite{camargo:2009} pode ser observado na \autoref{fig:ev.capital} e \autoref{tab:origemcapital}. Ocorrendo principalmente através do controle acionário, com elevação acentuada na segunda metade da década de 1990 até o início da década de 2000.  

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
\captionof{figure}{Evolução da origem de capital das instituições bancárias no Brasil}
![](12-exportedfigures/capital graphic-1.png)
\label{fig:ev.capital}
\fonte{Desenvolvido pelo autor, com dados do Banco Central}
\end{figure}

A expectativa com o aumento de instituições nacionais com controle estrangeiro era que houvesse elevação da concorrência e, consequentemente, redução no *spread* bancário, aumento da concessão de crédito, melhoria da qualidade e   dos produtos financeiros, avanços em tecnologias, ou seja, uma elevação na eficiência do setor \cite{camargo:2009}. 

Porém, o que se observou foi a adoção de postura conservadora por partes dos
bancos estrangeiros, com estratégia de ativos inclinada para negociação de
títulos públicos, e passivos direcionados para a captação de recursos advindos
de grupos de rendas média e alta, com exceção dos bancos públicos que
concentraram em operações de crédito \cite{camargo:2009}.

A inclinação para aplicação massiva em títulos públicos por parte das instituicões estrangeiras e de controle estrangeiro se dava diante a manutenção de elevadas taxas de juros, tornando o crédito para empreendimentos privados de elevado risco, e consequentemente elevando substancialmente o *spread* bancário e reduzindo a oferta de crédito \cite{camargo:2009}.

Outra variável importante na determinação do nível de desenvolvimento do sistema financeiro e econômica é relação crédito/PIB, que demonstra participação do total de concessão de crédito sobre o produto interno bruto do país. Quanto maior o percentual desta relação, espera-se um cenário de custo de crédito menor e favorecimento de empreendimentos capazes de impulsionar o crescimento. 




A \autoref{fig:credgdp} demonstra o comportamento da relação crédito/PIB no Brasil, que entre a segunda metade da década de 1990 até a meados da primeira metade da década de 2000 sofreu significativa queda, ficando abaixo dos 25%. Após esse período a oferta de crédito ocorreu uma expansão exponencial atingindo um pico de 54.22% do PIB. 

\begin{figure}
\captionof{figure}{Evolução da relação Crédito/PIB no Brasil}
![](12-exportedfigures/credit gdp-1.png)
\label{fig:credgdp}
\fonte{Desenvolvido pelo autor, com dados o Banco Central}
\end{figure}

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

A \autoref{fig:saldocredito} demonstra a evolução do saldo da carteira de crédito de crédito livre direcionado mensal em termos correntes, entre 1990 e 2020, podendo ser visualizada uma expansão exponencial de crédito a partir da metade da década de 2000, com leve recuo iniciado na metade da década de 2010, e posteriormente ultrapassando máxima anterior.   

O Sistema Financeiro em sua organização entre agentes normatizadores, supervisores, operadores e tomadores, além suas instâncias, possui um papel fundamental na determinação de políticas para definição dos níveis adequados de base monetária e e meios de pagamentos capazes de atender a atividade econômica, oferecendo liquidez e estabilidade. 

A Base Monetária restrita ($M_0 = BMr$) cosiste no total de pepel moeda emitido ($PME$) e das Reservas Bancárias ($RB$) em poder das instituições ou depositadas no Banco Central. É extraída de contas analíticas no balanço do BACEN, consistindo na emissão primária de moeda e configurando o passivo monetário, resultado líquido de suas operações ativas e passivas \cite{bcb:2019}. 
$$
BMr = M_0 = PME + RB
$$

Em 1995 foi introduzido o conceito de Base Monetária ampliada ($BMa = M_0$), que possui maior capacidade de explanar os preços da economia no Brasil, uma vez que traz maior percepção do fator substituição entre a moeda, em seu conceito convencional, e os demais ativos financeiros disponíveis, incluindo os passivos, como os depósitos compulsórios ($DC$) e títulos públicos federais ($TPF$) \cite{bcb:2019}.
$$
BMa = M_0 = BMr + DC +  TPF
$$

A \autoref{fig:moneybases} demonstra a evolução das bases monetárias restrita e ampliada, em termos correntes, entre os anos de 1995 e 2020. No inicío do período avaliado as séries estavam em patamares aproximados, ocorrendo um distanciamento exponencial ainda durante a década de 1990 e se tornando massivamente expressiva até o final do período. 

\begin{figure}
\captionof{figure}{Evolução das bases monetárias restrita e ampliada entre }
![](12-exportedfigures/money base.d-1.png)
\label{fig:moneybases}
\fonte{Desenvolvido com dados do Departamento de Estatísticas do Banco Central}
\end{figure}

A \autoref{fig:evpperb} demonstra a evolução do saldo de emissão de papel moeda e das reservas bancárias em termos correntes, entre 1995 e 2020, componentes da base monetária restrita. É possível observar que houve expressiva expansão do papel moeda emitido em termos correntes, e mesmo com elevação das reservas bancárias, houve uma desconexão entre as variáveis.



\begin{figure}
\captionof{figure} {Evolução da emissão de Papel Moeda e Reservas Bancárias}
![](12-exportedfigures/base moneybase.e-1.png)
\label{fig:evpperb}
\fonte{Desenvolvido com dados do Departamento de Estatísticas do Banco Central}
\end{figure}

A \autoref{fig:evcomptit} traz a visualização das variáveis de Depósitos compulsórios e emissão de títulos públicos, sendo os componentes adicionais da base monetária ampliada que a diferencia da base monetária restrita. E mostra a larga expansão de emissão de títulos públicos totais, o que vem essencialmente explicar a diferenciação entre as séries de base monetária. 

\begin{figure}
\captionof{figure} {Evolução dos Depósitos Compulsórios e emissão de títulos públicos}
![](12-exportedfigures/base components-1.png)
\label{fig:evcomptit}
\fonte{Desenvolvido com dados do Departamento de Estatísticas do Banco Central}
\end{figure}

Entre os Agregados Monetários estão o Meios de Pagamento na forma restrita ($M_1$), configurado por cédulas e moedas em poder do público ($PMPP$) e seus depósitos a vista ($DAV$), disponíveis prontamente para pagamentos de bens e serviços. O conceito de Meios de Pagamentos Ampliado adiciona à moeda legal os agregados considerados de elevada liquidez ($M_2$) e ($M_3$) \cite{bcb:2019} \cite{sgs:mpa}.
$$
M_1 = PMPP + DAV
$$

O Papel-moeda em poder do público ($PMPP$) é encontrado pelo resultado do papel moeda emitido ($PME$) subtraído dos encaixes do sistema bancário, obtidos diariamente em conta específica do balanço analítico Banco Central. Os depósitos a vista são aqueles remetem às captações pelos bancos criadores de moeda e transacionáveis por cheques ou meios eletrônicos \cite{sgs:m1}. 

Os meios de pagamentos $M_1$ consistem no passivo monetário de liquidez imediata do Banco Central e de instituições com poder emissão de moeda escritural e cooperativas de crédito, sendo registrados por regime de competência e gerados por estas instituições através do COSIF\footnote{ Realizados por meio de dados das demonstrações contábeis padronizadas},  SISBACEN\footnote{Dados de relatórios extracontábeis} e por instituições emissoras instrumentos monetários \cite{sgs:m1} \cite{sgs:mpa}.

A \autoref{fig:m1} traz a visualização da evolução dos saldos mensais de papel moeda em poder do público e dos depósitos a vista entre 1995 e 2020, em termos correntes. Nota-se que até o ano de 2015 ou depósitos a vista superavam o papel moeda em poder do público, quando essa relação se inverteu até meados de 2019 e passou a apresentar comportamento de igualdade até 2020. 

\begin{figure}
\captionof{figure}{Evolução dos componentes que formam os Meios de pagamentos restritos M1 — 1995 à 2020}
![](12-exportedfigures/m1-1.png)
\label{fig:m1}
\fonte{Desenvolvido com dados do Departamento de Estatísticas do Banco Central}
\end{figure}

O Meios de Pagamentos Ampliados $MPa$ consistem no conjunto de instumentos monetários que remetem de forma antecipada à demanda por moeda, configurando uma avaliação do grau de liquidez da economia de uma forma mais precisa. Os meios de pagamentos amplos são formados pelos agregados monetários $M_1$, $M_2$, $M_3$) e $M_4$ \cite{sgs:mpa}. 

No Brasil, a apuração e divulgação dos agregados monetários seguem as normas internacionais instituídas no Manual de Estatísticas Monetárias e Financeiras (MEMF), elaborado pelo Fundo Monetário Internacional (FMI) com a colaboração dos países participantes \cite{sgs:mpa}, o que vem trazer grandes vantagens técnicas para os países que aderem a estas normas.  

O Agregado Monetário $M_2$, contempla o Agregado Monetário $M_1$ mais o resultante das emissões primárias por instituições depositárias no mercado interno, que realizam a multiplicação de crédito, consistindo em depósitos de poupança ($DP$) e títulos privados emitidos pelas instituições depositárias ($TEID$)\footnote{Os títulos privados são compostos por Depósitos a prazo; Letras financeiras (LF); Letras de crédito do agronegócio (LCA); Letras de crédito imobiliárias (LCI); entre outros como aceites de letras de câmbio, Letras hipotecárias, Letras imobiliárias e Certificados de operações estruturadas \cite{sgs:mpa}.} \cite{sgs:mpa}. 
$$
M_2 = M_1 + DP + TEID
$$

O Agregado Monetário $M_3$ contempla o Agregado Monetário ($M_2$) adicionado das captações internas intermediadas pelos posição líquida de detentores moeda de renda fixa e das carteiras de títulos públicos federais registrados no Sistema Especial de liquidação e Custodia (Selic) e Bolsa de Valores. Consiste em quotas de fundos de renda fixa ($QFRF$)\footnote{São considerados somente os fundos cambiais, renda fixa  e multimercado. excluídos os fundos de ações, fundos de dívida externa e os fundos de investimentos em quotas de fundos de investimentos , por serem considerados agentes não depositários, que não produzem liquidez ao mercado \cite{sgs:mpa}} e operações compromissadas registradas no Selic\footnote{As que são lastreadas em títulos públicos federais} ($OCRS$) \cite{bcb:2019} \cite{sgs:mpa}.
$$
M_3 = M_2 + QFRF + OCRS
$$

O Agregado Monetário $M_4$, que recebe o conceito de poupança financeira, contempla o Agregado Monetário $M_3$ mais a carteira livre de títulos públicos federais\footnote{Consistindo somente os que estão devidamente registrados no Sistema Especial de Liquidação e Custódia (Selic), mesmo com elevada liquidez, há consenso que a classificação de quase-moeda deve ser restrita por não se configurar em uma instituição componente do Sistema Financeiro} de elevada liquidez ($TPF$) \cite{bcb:2019}.
$$
M_4 = M_3 + TPF
$$

É possível chegar ao conceito de Agregado Monetário $M_5$ que engloba o Agregado Monetário $M_4$ incluindo a capacidade disponível de aquisição de cartões de crédito ativos ($CACC$) \cite{cordoba:1996}.
$$
M_5 = M_4 + CACC
$$

A \autoref{fig:agrag} demonstra a evolução dos agregados monetários $M_1$, $M_2$, $M_3$ e $M_4$ em termos correntes, entre 2001 e 2020. É notado que os meios de pagamentos restritos $M1$ sofreram expansão irrisória. Nos meios de pagamentos ampliados, no $M_2$ é percebida uma considerável elevação, no $M_3$ e $M_4$ a expansão seguiu níveis exponenciais até o final do período.

\begin{figure}
\captionof{figure}{Evolução dos Agregados monetários — 2001 à 2020}
![](12-exportedfigures/m2m3m4-1.png)
\label{fig:agrag}
\fonte{Desenvolvido com dados do Departamento de Estatísticas do Banco Central}
\end{figure}

A teoria quantitativa da moeda, prega que o nível de preços ($P$) em uma economia guarda relação com a quantidade de moeda em circulação ($M$) e a velocidade ($V$) de cirulação — frequência média em que uma unidade monetária é consumida em um período de tempo —, diante seu produto real ($y$), com a premissa que no curto prazo o produto e a velocidade a moeda são constantes \cite{vasconcellos:2011}.
$$
MV = Py => P = \frac{MV}{y} => V = \frac{Py}{M}\
$$

No que tange a abordagem microeconômica, as instituições bancárias como sociedade anônimas e instituições supervisionadas pelo Banco Central, são obrigadas a divulgar seus resultados em forma de demonstrações contábeis. A partir destas demostrações podem ser observados e extraídos dados e indicadores generalizados sobre a operação das instituições.

Os dados e estatísticas do Sistema Financeiro Nacional são compilados e  divulgados pelo Banco Central com a legislação vigente, essencialmente seguindo a Lei nº 4.595, de 31 de dezembro de 1964 e Resoluções do Conselho Monetário Nacional, garantindo o sigilo de dados relativos às instituições financeiras, empresas e indivíduos\footnote{conforme disposto no artigo 2 da Lei Complementar nº 105, de 11 de janeiro de 2001} \cite{sgs:bm}.

A \autoref{tab:tabledocs} traz o resumo dos documentos que constituem as demonstrações contábeis padronizadas, enviadas pelas próprias instituições financeiras através do Sistema Contábil das Instituições Financeiras (COSIF), seguindo um conjunto de normas contábeis e plano de contas padronizados para os períodos definidos. 

\begin{table}
\caption{Tabela indicativa das Demonstrações Contábeis Padronizadas}
<table class="table" style="font-size: 10px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Documento </th>
   <th style="text-align:left;"> Tipo </th>
   <th style="text-align:left;"> Códigos </th>
   <th style="text-align:left;"> Periodicidade </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Balancete </td>
   <td style="text-align:left;"> Analítico </td>
   <td style="text-align:left;"> 4010, 4020, 4413, 4433 </td>
   <td style="text-align:left;"> Mensal ou Trimestral </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Balancete </td>
   <td style="text-align:left;"> Analítico Consolidado </td>
   <td style="text-align:left;"> 4040 </td>
   <td style="text-align:left;"> Mensal ou Trimestral </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Balancete </td>
   <td style="text-align:left;"> Analítico - Conglomerado Prudencial </td>
   <td style="text-align:left;"> 4060 </td>
   <td style="text-align:left;"> Mensal ou Trimestral </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Balanço </td>
   <td style="text-align:left;"> Analítico </td>
   <td style="text-align:left;"> 4016, 4026 </td>
   <td style="text-align:left;"> Semestral </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Balanço </td>
   <td style="text-align:left;"> Analítico Consolidado </td>
   <td style="text-align:left;"> 4046 </td>
   <td style="text-align:left;"> Semestral </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Balanço </td>
   <td style="text-align:left;"> Analítico - Conglomerado Prudencial </td>
   <td style="text-align:left;"> 4066 </td>
   <td style="text-align:left;"> Semestral </td>
  </tr>
</tbody>
</table>
\label{tab:tabledocs}
\fonte{Desenvolvido a partir das fontes citadas}
\end{table}

Os dados são divulgados seguindo uma padronização para o setor, onde podem ser observados as receitas, despesas, ativos, passivos, patrimônio líquido, entre outros em multiplos níveis, para cada período de registo, buscando refletir a situação econômica e financeira, possibilitando a realização de análises evolutivas e comparativas e agregadas do setor financeiro.  

Com acesso aos resultados contábeis é possível obter os principais indicadores para avaliação de resultados das instituições bancárias, como os índices de Liquidez Geral e Liquidez Corrente, Endividamento e Composição do Endividamento, retorno sobre o ativo, retorno sobre o patrimônio líquido, margem EBITDA, margem líquida e grau de alavancagem financeira. 

O índice de Liquidez Corrente ($LC$) mede a capacidade da instituição em honrar os compromissos com credores, definindo seu nível de solvência no curto prazo. É obtido pela razão entre o ativo circulante ($AC$) e o passivo circulante ($PC$), indicando o quanto do ativo circulante está disponível para cumprir com cada unidade monetária da dívida de curto prazo \cite{graham:2012} \cite{assaf:2020}.
$$
LC = \frac{AC}{PC}
$$

O índice de Liquidez Geral ($LG$) mede a capacidade da instituição honrar os compromissos com seus credores no longo prazo, definindo seu nível de solvência geral, é obtido pela razão entre a soma do ativo circulante ($AC$) e recursos realizáveis no longo prazo ($RLP$) e a soma do passivo circulante ($PC$) e exigível no longo prazo ($ELP$) \cite{assaf:2020}.
$$
LG_ = \frac{AC + RLP}{PC + ELP}
$$

O índice de endividamento ($CT$), mede a participação de capital de terceiros em relação aos financiamentos realizados com capital próprio. Quanto maior o indicador, maior a dependência da instituição de capital de terceiros para financiamento das suas operações, obtido pela razão entre o passivo ($P$) e o patrimônio líquido ($PL$) \cite{assaf:2020}.
$$
CT = [\frac{P}{PL}]
$$

A composição do endividamento ($CE$) indica o percentual da dívida em relação a dívida que vence no curto prazo. Quanto maior for esse indicador, mais crítica é a situação, necessitando de melhores resultados para cumprir os compromissos no curto prazo. É obtido pela razão entre o passivo circulante ($PC$) e a soma do passivo circulante e exigível a longo prazo ($ELP$) \cite{assaf:2020}. 
$$
CE = \frac{PC}{PC + ELP}
$$

O Índice de Eficiência bancária ($IE$) avalia o quanto a instituição desembolsa para gerar uma unidade de receita. É obtido por meio da razão entre a soma das despesas administrativas ($DA$), despesas com pessoal ($DP$) líquidas da participação nos lucros ($PLR$) sobre a soma entre Margem Financeira ($MF$) e receita ($R$) \cite{timotio:2018}.  
$$
IE = \frac{DA + DP - PLR}{MF + R} 
$$

Outro indicador utilizado para avaliação da situação financeira das instituições bancárias é o obtido da relação entre as receitas de prestação de serviços ($RS$) e as despesas administrativas ($DA$) \cite{dantas:2012}. 
$$
RSDA = \frac{RPS_{}}{DA_{}}
$$

O retorno sobre o Ativo ($ROA$), mede a rentabilidade da instituição diante a totalidade dos seus ativos. O quanto para cada unidade monetária investida na instituição é convertida em lucro líquido, obtida da relação entre o lucro operacional ($LO$) e o ativo total ($AT$)  \cite{assaf:2020}.  
$$
ROA = \frac{LO}{AT}
$$

O Retorno sobre o Patrimônio Liquido ($ROE$) mensura a relação entre o lucro líquido  ($LL$) em o Patrimônio Líquido ($PL$) da instituição, configurando o retorno dos investimentos para os sócios e acionista, para cada unidade monetária com recursos próprios aplicados na empresa \cite{assaf:2020}.   
$$
ROE = \frac{LL}{PL}
$$

A margem EBITDA ($MEB$) é obtida da relação entre o EBITDA — lucro antes dos juros, depreciação, amortização e impostos sobre a renda, configurando o lucro operacional da instituição — e a Receita Líquida ($RL$), revelando a capacidade da instituição na geração de caixa \cite{assaf:2020}. 
$$
MEB_it = \frac{EBITDA_it}{RL_it}
$$

A Margem Líquida ($ML$) é um indicador que demonstra a parte de cada unidade monetária das intermediações financeiras que foi convertida em Lucro Líquido, sendo obtida da relação entre o lucro líquido ($LL$) e o resultado líquido da intermediação financeira ($RLIF$) \cite{assaf:2020}. 
$$
ML = \frac{LL}{RLIF}
$$

O grau de alavancagem financeira ($GAF$) captura o efeito da tomada de recursos de terceiros a um dado custo, alocados para ativos com distintas taxas de retornos. E mostra como se dá o aumento do lucro líquido através da estrutura de financiamento, definindo a parcela do retorno melgor ou pior se estivessem financiando a operações totalmente com capital próprio \cite{assaf:2020}. 
$$
GAF = \frac{RPL}{ROA}
$$

O risco de crédito das instituições bancárias pode ser obtido por meio da relação entre o saldo da Provisão para Créditos de Liquidação Duvidosa ($PCLD$) e do total da carteira de crédito ($OPCR$), obtidos através das contas 16900008 e 16000001 \cite{dantas:2012}
$$
RC_{} = \frac{PCLD_{}}{OPCR_{}}
$$

A participação de mercado ($MS$) de cada instituição pode ser mensurada a partir da relação entre suas operações de crédito {$OPCR$} no total das operações de crédito do mercado, sendo obtido através da conta 1600001 \cite{dantas:2012}. 
$$
MS_{} = \frac{OPCR_{}}{\sum_{i}^{n}OPCR_{}} 
$$

Diante o levantamento, o setor bancário brasileiro durante o período avaliado
passou por diversas transformações em sua estrutura no que tange a concentração
de mercado, aumento da participação de capital estrangeiro por meio de controle
acionário, redução da participação pública. 

Em relação aos indicadores foi verificado que, entre a década de 1980 até metade da década de 1990, no cenário hiperinflacionário, mesmo com redução da
concentração bancária, os indicadores de eficiência de intermediação
financeiras como o *spread* bancário e a relação crédito/PIB estavam em níveis
considerados ineficientes e muito destoantes em comparação a outros países e
regiões. 

A partir de 1995 se observou mudanças significativas no setor bancário, com
nova concentração, redução de instituições nacionais devido o controle
acionário por capital estrangeiro, e expressiva redução no *spread* bancário e
a partir de 2004 uma mudança significativa no saldo da carteira de crédito e na relação crédito/PIB e na expansão das bases monetárias e meios de pagamentos ampliados.

Esta seção levantou informações amplas sobre o setor bancário brasileiro, e
identificando variáveis macroeconômicas e microeconômicas refrentes a economia como um todo, setor financeiro, ao setor bancário e as instituições em si.  No próximo capítulo serão levantados conceitos, definições e estudos sobre a evolução, decomposição e determinantes do *spread* bancário.  


<!--chapter:end:02-bankingstructure.Rmd-->

\textual
\pagestyle{simple}

\section{Spread Bancário}

Esta seção irá tratar sobre os principais aspectos e características do
*spread* bancário. Na primeira parte serão abordados os conceitos e definições
gerais. Na segunda parte as características amplas do mercado brasileiro. Na
terceira parte sobre os estudos empíricos realizados no Brasil. O foco é
identificar elementos que possam contribuir com o objeto deste estudo.

\subsection{Conceitos e Definições}

Por definição o termo *spread*, que em tradução livre significa amplitude, crescimento, extensão, é utilizado no setor financeiro no sentido de margem, sendo obtido através da diferença entre a taxa de aplicação incidente nas operações de crédito e a taxa de captação que remunera as aplicações financeiras, se configurando como a diferença entre a composição dos custos destas operações \cite{BCB:2000}. 
$$
Spread = \text{Taxa de Aplicação} - \text{Taxa de Captação}
$$

O *spread* bancário representa uma medida que sinaliza o desempenho dos bancos \cite{levine:1997}. É considerado um indicador de eficiência da economia, influenciando o nível de crédito e a atividade econômica. Em níveis elevados pode desfavorecer o crédito destinado para produção e consumo produtivos e estar associado com baixo desenvolvimento econômico \cite{WB:2005}. 

Os estudos em torno do *spread* bancário ocorrem em três óticas: evolução,
estrutura e determinantes \cite{dick:1999}. Em \textcite{dick:1999} é
destacada a importância de distinguir a abordagem em torno da estrutura e
determinante do *spread* bancário, no sentido de complementariedade. O diagrama
na \autoref{fig:diagram} ilustra as óticas de estudo do *spread* bancário.

\begin{figure}
\captionof{figure}{Diagrama de ilustração da perspectiva de ótica do \emph{spread}}
![](12-exportedfigures/diagram.spread.otic-1.png)
\label{fig:diagrama}
\fonte{Desenvolvido com base em \cite{dick:1999}}
\end{figure}

A abordagem em torno da evolução visa analisar o comportamento ao longo do
tempo, através de análises quantitativas e qualitativas, enquanto a ótica da
estrutura busca identificar e analisar os componentes de resultados envolvendo
receitas, despesas e provisões. Na abordagem sobre os determinantes é
vislumbrado identificar as variáveis que explicam as variações do indicador ao
longo dos períodos \cite{dick:1999}. 

Nas últimas décadas vem se tornando relevantes os estudos em torno da decomposição do *spread* bancário ($Sprd$), em torno dos seus componentes. Entre os componentes explícitos estão a inadimplência ($Ind$), despesas administrativas ($DA$), impostos diretos ($ID$) e indiretos ($II$), custo de captação ($CP$) e margem de lucro ($ML$) dos bancos conforme ilustrado abaixo \cite{BCB:2000}.
$$
Sprd=f(Ind, DA, II, ID, ML, CP)
$$

Esta configuração contemplando a margem de lucro, despesas e riscos envolvidos nas operações de crédito vem desmistificar a comum abordagem do *spread* como o rendimento auferido pelos bancos \cite{costa;nakane:2004} Souza (2007) *apud* \cite{dantas:2012}. Desta forma implica na diferença entre o custos operacionais na ótica de precificação, que após descontados das receitas, remontam o lucro do banco \cite{BCB:2016}.

Além da avaliação de seus componentes, o *spread* pode ser analisado
conjuntamente por três características: enquanto a abrangência da amostra,
conteúdo e origem da informação \cite{leal:2006}. Estes três elementos estão interligados, podendo serem analisados separadamente ou em conjunto, trazendo vários níveis de informações.  

\begin{figure}
\captionof{figure}{Diagrama de ilustração da perspectiva de características do \emph{spread}}
![](12-exportedfigures/diagram.spread.carac-1.png)
\label{fig:diagramb}
\fonte{Desenvolvido com base em \cite{leal:2006}}
\end{figure}

A abrangência da amostra consiste nas especificidades das operações de crédito das instituições e seu nível de agregação e granularidade \cite{costa;nakane:2004}. Uma análise agregada dessa característica pode ser dificultada pela existência de heterogeneidade do setor, ressaltando a importância de realizar análises do *spread* bancário em diferentes características e óticas \cite{block:2000}. 

A abordagem em torno do conteúdo está relacionada com os subcomponentes que
envolvem a receita e as despesas das intermediações financeiras, podendo
englobar, ou não, as tarifas e comissões sobre as taxas de captações e
aplicação \cite{block:2000}. Porém com o formato atual dos dados divulgados, não é psosivel uma análises deste nível. 

A origem da informação é analisada em dois cenários: *ex-ante* e *ex-post* \cite{kunt:1999, levine:1997}. A perspectiva *ex-ante* refere-se as planejamento e expectativas das instituições bancárias em relação ao mercado de crédito e os riscos envolvidos, obtido por método de precificação envolvendo as taxas de captação e empréstimo \cite{durigan:2018, leal:2006, dantas:2012}.

O *spread* *ex-ante*, por se tratar de um indicador de planejamento, refletindo
as expectativas das instituições bancárias em relação ao mercado, finda
demonstrando-se mais volátil, não representando as taxas efetivas realizadas.
As informações *ex-ante* são repassadas ao Banco Central que as divulgam
\cite{durigan:2018, leal:2006, dantas:2012}.

No *spread ex-post* as margens são obtidas mediante a apuração dos resultados contábeis, através dos demonstrativos, considerando as receitas e custos efetivos, implicando nos resultados realizados pelas instituições financeiras \cite{kunt:1999, durigan:2018}. Nesse sentido, em termos médios, as taxas *ex-post* se demonstram mais estáveis \cite{leal:2006, dantas:2012}.

Em oposição a medida de planejamento *spread ex-ante*, disponibilizada de forma agregada, o *spread ex-post*, por mostrar a diferença entre as taxas de aplicação e captação obtidas diretamente das demonstrações contábeis, se configura na efetiva margem realizada por cada instituições no período avaliado, e por isso com um maior para fins de análises \cite{dantas:2012}.

Reduções no *spread* *ex-post* não necessariamente significam aumento da
eficiência de intermediação, pois podem estar associadas a uma
redução da inadimplência \cite{kunt:1999}. Como observado em
\textcite{klein:1971} e \textcite{ho-saunders:1981} o *spread* bancário é
determinado de acordo com as características e os riscos envolvidos nas
operações, inerentes em cada estrutura de mercado. 

\subsection{Spread Bancário no Brasil}

No Brasil, a taxa de aplicação para crédito de recursos livres é pactuado entre
instituição e tomador. Somente as operações de crédito envolvendo recursos
direcionados são sujeitas à limites, não podendo exceder 12% a.a. mais a taxa
referencial de juros \cite{BCB:2016}.O que faz  *spread* bancário estar inserido nos mecanismos de mercado, sujeito a flutuações de oferta e demanda.  

No mercado bancário brasileiro, o modelo consolidado de mensuração do *spread* bancário, de acordo com demonstrado na \autoref{tab:spread.tb}, leva em consideração o saldo médio de capital emprestado, e a diferença entre as receitas de aplicação e despesas de captação, ocorrendo a classificação em *spread* bruto, direto e líquido \cite{fipecafi:2005}

\begin{table}[b]
 \centering
   \captionof{table}{Esquema de obtenção do \emph{Spread} mais adotado no mercado} 
    \label{tab:spread.tb}
     \begin{tabular}{l|r|r|r}
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
brasileiro, atuando na identificação e ajustes em variáveis econômicas
influentes. Entre as primeiras medidas estavam a redução da taxa de compulsório
para depósitos a vista e até a extinção para depósitos a prazo, redução do IOF
e a redução da Selic \cite{BCB:2000}.

\begin{figure}
\captionof{figure}{Evolução do \emph{spread} bancário brasileiro até 2011}
![](12-exportedfigures/average spread-1.png)
\label{fig:spread2012}
\fonte{Desenvolvido a partir de dados do Banco Central}
\end{figure}

A \autoref{fig:spread2012} mostra a evolução do *spread* bancário brasileiro
médio entre os anos de 1994 e 2012, chegando a atingir 146.44%, com
significativa queda ao longo desse período, atingindo 24.69% ao final. Esta série foi descontinuada em 2012, passando a ser utilizada nova
metodologia de cálculo.

O Banco Central, até 2007 utilizava metodologia para avaliação do *spread*
bancário contemplando somente os recursos livres, o que não vinha a
proporcionar uma avaliação mais aprofundada. Em 2008 houve uma modificação na
metodologia de decomposição do *spread*, alterando o cálculo do custo médio de
captação e detalhando classificações do crédito \cite{dantas:2012}

Para o custo médio de captação passou a se utilizar a taxa média ponderada
entre as taxas dos depósitos a prazo (CDB), caderneta de poupança e a vista,
a participação dos custos efetivos dos recolhimentos compulsórios em detrimento
do custo de oportunidade \cite{dantas:2012}

O BACEN mantém atualmente duas séries para o indicador: *Spread* Médio das operações de crédito (MOC) e *Spread* do Indicador de Custo de Crédito (ICC). As séries são disponibilizadas em termos totais e nas subdivisões por tipo de
recursos, crédito e tomador, conforme demonstrado na \autoref{tab:spread.s}. 

\begin{table}
\captionof{table}{Resumo das séries de \emph{Spread Ex-Ante} e suas subdivisões}
<table class="table" style="font-size: 10px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Spread.ICC </th>
   <th style="text-align:left;"> Spread.MOC </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Total </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito Direcionado </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito não rotativo 
                       - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito Livre </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito com 
                       recursos direcionados - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Pessoas físicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito 
                       com recursos livres - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Pessoas jurídicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito - 
                       Pessoas físicas - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito não rotativo - Total </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito 
                       - Pessoas jurídicas - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito Direcionado - Pessoas físicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito não 
                       rotativo com recursos livres - Pessoas Jurídicas </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito Direcionado - 
                      Pessoas jurídicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito não rotativo 
                       com recursos livres - Pess oas Físicas </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito Livre - Pessoas físicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito não 
                       rotativo com recursos livres - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito Livre - Pessoas jurídicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito não 
                       rotativo - Pessoas físicas - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito não rotativo 
                      - Recursos livres - Pessoas físicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito não 
                       rotativo - Pessoas jurídicas - Total </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito não rotativo 
                      - Recursos livres - Pessoas jurídicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito com recursos
                       direcionados - Pessoas físicas </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito não rotativo - Recursos livres </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito com 
                       recursos direcionados - Pessoas jurídicas </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito não rotativo - Pessoas físicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito com recursos
                       livres - Pessoas físicas </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 8cm; "> Spread do ICC - Crédito não rotativo - 
                      Pessoas jurídicas </td>
   <td style="text-align:left;width: 8cm; "> Spread médio das operações de crédito com recursos
                       livres - Pessoas jurídicas </td>
  </tr>
</tbody>
</table>
\label{tab:spread.s}
\fonte{Desenvolvido com base do relatório do portal de dados abertos do Banco Central}
\end{table}

Estas séries estatísticas representam estimativas baseadas nas informações
repassadas pelas instituições bancárias das taxas de juros das operações de
crédito e indicadores do mercado financeiro do custo médio do dinheiro para o
custo médio de captação \cite{BCB:2016}. 

A série do *Spread* médio das operações de crédito é calculada a partir da
diferença entre a taxa média de juros de novas operações de crédito no SFN e o
custo de captação referencial médio de operações de crédito livre, direcionado
e não rotativo podendo ser observados por tomador \cite{BCB:2016}.

\begin{figure}
\captionof{figure}{Evolução do Spread médio das operações de crédito}
![](12-exportedfigures/spread 2019 moc-1.png)
\label{fig:spreadmoc}
\fonte{Desenvolvido a partir de dados do Banco Central do Brasil — Departamento de Estatísticas}
\end{figure}



A \autoref{fig:spreadmoc} mostra a visualização da evolução mensal do spread
médio das novas operações de crédito contratadas entre janeiro de 2013 e julho
de 2020. No período entre 2014 e 2017 se verifica uma elevação de 10 p.p no
*spread* total, recuando 8 p.p a patamar próximo ao início do período. É possível notar a grande disparidade entre os *spread* de recursos livres e direcionados. 

O *Spread* do ICC, considera a diferença entre o Índice de Custo de Crédito — equivalente ao custo médio de juros das operações ativas da carteira do SFN — e o custo de captação médio ponderado, levando em consideração operações de crédito livre, direcionado e não rotativo, subdividido por pessoa física e jurídica \cite{BCB:2016}.

\begin{figure}
\captionof{figure}{Evolução do \emph{Spread} do Índice do Custo de Crédito}
![](12-exportedfigures/spread 2019 icc-1.png)
\label{fig:spreadicc}
\fonte{Desenvolvido a partir de dados do Banco Central do Brasil - Departamento de Estatísticas}
\end{figure}

Na \autoref{fig:spreadicc} pode ser visualizada a evolução do *spread* do ICC,
entre janeiro de 2013 e julho de 2020 com expressiva elevação entre 2014 e
2017, passando a decair até retormar a patamares similares ao início do
período. Também pode ser notada a expressiva diferença entre o *spread* de
recursos livres e direcionados.

Ao analisar as séries do *Spread* ICC e *Spread* MOC é possível destacar outra perspectiva de avaliação do *Spread* no que tange a dimensão, consistindo no tipo de recurso, modalidade e tomador, onde esta última aumenta o nível de granularidade abrangendo as demais. A perspectiva de dimensão atua de forma congruente com as perspectivas de ótica e de características. 

\begin{figure}
\captionof{figure}{Diagrama de ilustração da perspectiva de dimensão  \emph{spread}}
![](12-exportedfigures/diagram.spread.dim-1.png)
\label{fig:diagramc}
\fonte{Desenvolvido com base nos dados}
\end{figure}

A perspectiva de dimensão demonstra ser relevante, uma vez que existem diferenças consideráveis para os níveis de *spread* de acordo com tomador, tipo de crédito e modalidade. Levantando a indagação se uma análise agregada é capaz identificar de forma realística os efeitos desta variáveis sobre os setores produtivos.

O Indicador Custo de Crédito (ICC) consiste no custo médio de todas as
operações de crédito abertas — independentes do período em que foram
contratadas — que compõem a carteira de empréstimos, financiamentos e
arrendamento mercantil das instituições do Sistema Financeiro Nacional (SFN) \cite{BCB:2000}. 

\begin{figure}
\captionof{figure}{Evolução do Indicador de Custo de Crédito (ICC)}
![](12-exportedfigures/ICC-1.png)
\label{fig:evicc}
\fonte{Desenvolvido a partir de dados do Banco Central do Brasil — Departamento de Estatísticas}
\end{figure}

A \autoref{fig:evicc} traz a visualização da evolução do Índice de Custo de
Crédito entre janeiro de 2013 e dezembro de 2020, com máxima de 22.98% em
2017, demonstrando  queda significativa a partir de 2020, chegando a atingir 16.77% em agosto de 2020.

\section{Estudos anteriores}

Na literatura acadêmica não existe uma teoria formalizada acerca do *spread*
bancário \cite{timotio:2018}. Sendo verificados estudos empíricos que visam
classificar, analisar e identificar variáveis microeconômicas e macroeconômicas
influentes nesse indicador em diversas perspectivas.

A grande maioria dos estudos realizados no Brasil utilizam as medidas de
*spread* bancário divulgadas pelo Banco Central, que remetem a uma perspectiva
*ex-ante*, registrando as taxas planejadas na fase de concessão de crédito. E
para as variáveis explicativas a grande maioria utiliza indicadores
macroeconômicos \cite{dantas:2012}

No ano de 1994, \textcite{aronovich:1994} realizou estudo econométrico para
verificar a influência da inflação e nível de atividade econômica no *spread*
bancário *ex-ante*, encontrando relação direta do *spread* com a inflação e
indireta com o nível de atividade econômica.

Em estudo dos determinantes macroeconômicos do *spread* bancário ex-ante, \textcite{oreiro-2006} utilizou modelo de regressão múltipla — conforme abaixo
\footnote{trend = tendência determinista que controla outras variáveis; selic = taxa Selic; adm = despesa administrativas; risk =  proxy para o risco de crédito (spread do C-Bond sobre o rendimento dos títulos do Tesouro Americano de mesma maturidade; imp são impostos indiretos; comp = compulsório incidente sobre os depósitos a vista.} — para identificar as variáveis influentes. O estudo chegou ao resultado que a alta volatilidade e as taxas da Selic são um dos principais determinantes desse indicador no setor bancário brasileiro, identificando também a significância do nível de atividade industrial.
$$
ln spread = \beta_0 trend + \beta_1 ln selic + \beta_2 ln adm + \beta_3 ln risk + \beta_4 ln imp + \beta_5 ln comp
$$

Em análise dos determinantes do *spread* bancário ex-post, \textcite{dantas:2012} utilizou modelo de dados microeconômicos em painel dinâmico (jan-2000 a out-2009), encontrando níveis significativos e diretos com o risco de crédito, concentração, atividade econômica, e indireta com a participação de mercado, não encontrando níveis significativos com origem de capital e tipo de organismo. 

Outra observação em \textcite{dantas:2012} foi a forte relação do *spread*
*ex-post* no momento atual com o momento anterior imediato, e que as
instituições tendem a cobrar maiores taxas, quando maior o nível de
concentração do mercado, não encontrando significância da Selic na determinação
deste indicador. 

Em \textcite{almeida:2013} foi desenvolvido modelo de dados macroeconômicos e microeconômicos em painel de 64 instituições bancárias para avaliação de determinantes do *spread* *ex-post* no Brasil entre o primeiro trimestre de 2001 e o segundo trimestre de 2012, encontrando como relevantes  as despesas administrativas, receita de serviços, índice de cobertura, PIB e o grau de concentração.

Em \textcite{durigan:2018} foi realizada análise dos fatores macroeconômicos e
indicadores industriais que influenciam o *spread* bancário *ex-ante*, através de análise de regressão linear multivariada utilizando 18 variáveis em quatro
modelos. Chegando a conclusão que o aumento da atividade industrial, a redução
do desemprego e o consumo atuam na diminuição do *spread* bancário. 

Os modelos desenvolvidos por \textcite{durigan:2018} demonstraram que há uma relação significativa e direta entre *spread* e: inadimplência, IPIs (bens de capital, intermediários, semiduráveis, não duráveis e consumo duráveis), Selic, PIB, desemprego e o EMBI+\footnote{Medida de taxa de risco-país}. As relações indiretas foram encontradas em: IPI (bens de consumo e geral), IPCA, saldo da carteira de crédito e índice de vendas no varejo.

O estudo de \textcite{timotio:2018} teve foco em abordagem microeconômica ao
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
estudos acerca do *spread* ex-pots de Fipecafi (2004) \cite{dantas:2012} e Matias (2006) \cite{leal:2006}.

Em \textcite{fipecafi:2005} foi realizado estudo de apuração de resultados,
*ex-post*, baseado em demonstrações contábeis entre o 1º semestre de 2005 de
instituições que representavam 75,8% do ativo total e 76% do total de crédito.
Chegando a um resultado médio de *spread* bruto de 7,6% para pessoa física e
3,2% para pessoa jurídica, e *spread* líquido de 1,6% para pessoa física e 0,5%
para pessoa jurídica.

A \autoref{tab:exantea} e a \autoref{tab:exanteb} trazem o resumo dos
principais estudos empíricos sobre *spread* bancário ex-ante no Brasil, com
resultados obtidos através de modelagem econométrica com utilização de
regressão, tomando variáveis micro e macroeconômicas como explanatórias e
demonstrando a relação com o *spread ex-ante*. 

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

Ainda nas \autoref{tab:exantea} e a \autoref{tab:exanteb}, dois estudos chegaram a resultados diferentes para a volatilidade da Selic. Os efeitos do IPCA foram testados em três estudos, os dois mais recentes encontraram uma relação indireta. Em três estudos que examinaram o IGP, dois encontram relação direta, um deles foi repetido posteriormente e encontrou relação indireta.

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
influência direta com o grau de concentração e o *spread ex-post*. E dois dos
estudos chegaram a resultados opostos para os de posição de market share e a
variável dependente.

Este capítulo verificou os principais conceitos, características e estudos acerca do *spread* bancário no Brasil, identificando as óticas de análise por evolução, composição e determinantes através da abrangência da amostra, conteúdo e origem da informação e por dimensão por tipo de empréstimo e tomador. 

Ainda foi verificado que as maiores limitações estão na dificuldade de desagregação de informações para uma análise mais aprofundada, prejudicando as análises de determinantes do *spread ex-post*. E a maioria dos estudos mais significativos estão relacionados ao *spread ex-ante*

No próximo capítulo, será descrita a metodologia de trabalho com a formulação
das hipóteses baseado nas informações e levantamentos dos capítulos anteriores,
nos estudos pesquisados e na teoria econômica, através da coleta, tratamento e
análise de dados. 


 





<!--chapter:end:03-spread.Rmd-->

\textual
\pagestyle{simple}

\chapter{Procedimentos Metodológicos}

Neste capítulo serão descritos os principais procedimentos metodológicos, técnicas e ferramentas que serão utilizados neste trabalho, visando organizar as etapas da pesquisa e permitir um maior nível de reproducibilidade, revisão e refutabilidade da mesma.

Este trabalho está sendo desenvolvido e editado em ambiente R Markdown com utilização de linguagem Latex para padronização de textos, figuras e tabelas, e as linguagens R e Python para coleta, limpeza, tratamento, análise, visualização, modelagem e estimação econométrica dos conjuntos de dados.

Serão selecionadas as instituições bancárias na categoria de Banco Comercial, Banco e Investimento, Banco de Desenvolvimento e Caixa Econômicas que realizaram operações de crédito entre o primeiro trimestre de 2001 e o terceiro trimestre e 2020.

Para efeitos de identificação de variáveis macroeconômicas que atuam como componentes implícitos e explícitos do *spread* serão avaliadas a taxa Selic, Taxa de Compulsório, Base Monetária e meios de pagamento. Estes dados serão obtidos de forma secundária nos bancos de dados abertos do Banco Central, IPEA, IBGE e Receita Federal do Brasil.

Os dados de resultados, operação, indicadores e estrutura de capital das instituições bancárias serão obtidos de forma secundária nos banco de dados abertos do Banco Central e da Comissão de Valores Monetários, consistindo em demonstrações contábeis padronizadas informadas a estas instituições supervisoras.

Para construção dos modelos econométricos a serem estimados se partirá de alguns pressupostos teóricos norteadores obtidos através da pesquisa bibliográfica e concepções desenvolvidas antes e durante a pesquisa, com intuíto embasar a seleção das variáveis a serem testadas e incluídas no modelo final.

Será assumido que o *spread* bancário é definido diante um conjunto de fatores endógenos, definidos por questões microeconômicas envolvendo as operações de cada instituição e dos mercados financeiro e bancário, e fatores exógenos provenientes de questões macroeconômicas, afetando diretamente ou indiretamente as operações.

O *spread*  ($SPR$) será abordado dentro de uma concepção de precificação, diante um conjunto de variáveis explícitas como despesa de captação ($D$), capital emprestado ($E$)  — insumo das operações de crédito —, impostos variáveis ($II$), despesas administrativas ($DA$), lucro líquido ($ML$) e inadimplência ($IND$).
$$
Spr = f(E,D,II,DA,ML,IND)
$$

Na visão microeconômica, assume-se que o *spread* bancário não se configura na margem de lucro dos bancos, não cabendo abordagem de *spread* bruto, direto e líquido. E que o *spread* bancário se relaciona com os resultados das instituições, colaborando com a solidez do setor, não cabendo a inclusão no modelo de variáveis que remetam a resultados e calculadas a partir destas.

Na abordagem macroeconômica, o *spread* bancário é tido como um indicador fundamental e determinante para o nível de desenvolvimento econômico de determinado país ou região a medida que se relaciona com a determinação de nível e crédito produtivo capaz de gerar renda, influenciado por variáveis macroeconômicas relacionadas a regulação e políticas monetárias e fiscais.

Nesse sentido aqui é estabelecida a compreensão que o nível de atividade econômica, industrial, produtividade, desemprego e produto interno bruto de mercados, países e regiões guardam relação com o *spread* bancário, e não o contrário, mesmo que aja a compreensão da abordagem em torno das expectativas dos agentes, será mantida a abordagem de não não considerar essas variáveis como determinantes do *spread ex-post*.
$$
SprEp = f(SEL,COMP,IPCA,BM,MP,VM)
$$

O primeiro modelo a ser desenvolvido buscará testar e selecionar variáveis macroeconômicas e microeconômicas que exerçam significativa influência, de forma implícita e explícita no *spread* bancário *ex-post*. Partindo da definição geral tautológica de *Spread* ($Spr$), resultado da diferença entre a taxa de aplicação ($I_{apl}$) e a taxa de captação ($i_{cap}$).
$$
Spr = i_{apl} - i_{cap} 
$$

Em termos de resultado a taxa de aplicação ($i_{apl}$) é obtida da relação entre a receita das operações de crédito ($R$) e das operações de crédito ($E$). Já a taxa de captação é extraída da relação entre as despesas de captação ($D_{cap}$) em relação do montante capitado ($C$)

$$
SprEp = \frac{R}{E} - \frac{D_{cap}}{C}
$$

A receita das operações de crédito ($R$) é obtida levando em  consideração as operações de crédito — capital emprestado — ($E$) e uma taxa de juros ($i_{jr}$), que contempla os custos de captação, os custos operacionais, inadimplência, impostos diretos e indiretos e margem líquida. 
$$
R= (E * i_{jr}) 
$$

A receita das operações de crédito pode ser decomposta levando em consideração as despesas administrativas ($D_{adm}$), provisões de inadimplência ($P_{inad}$) custos de captação ($D_{cap}$), impostos variáveis ($Imp_{ind}$), impostos sobre a renda ($Imp_{dir}$)  e margem líquida ($MgLqd$).
$$
R = D_{adm} + P_{inad} + D_{cap} + Imp_{ind} + Imp_{dir} + MgLqd
$$

A decomposiçao da receita pode ser ampliada com a inserção das variáveis componentes. O primeiro bloco da composição consiste na inserção das taxas e alíquotas aplicados sobre o capital emprestado ($E$) e captação ($C$), sendo elas as despesas administrativas ($i_{adm}$), inadimplência ($i_{ind}$), captação ($i_{cap}$), recolhimento compulsório ($i_{comp}$), aplicação de compulsório($i_{ac}$), fundo garantidor de crédito ($i_{fgc}$).

Levando em consideração que os depósitos são reduzidos diante a obrigação de recolhimentos compulsórios e contribuição para o fundo garantidor de crédito, um empréstimo que dependa de captação, a necessidade de captação é maior para atender a operação de empréstimo no volume  $C = E / (1 - i_{comp} - i_{fgc})$ \cite{cardoso:1999}.

O segundo bloco da decomposição da receita consiste na inseção de variáveis referente as taxas e alíquotas aplicados sobre a própria receita ($R$), contemplando o PIS ($i_{pis}$), COFINS ($i_{cof}$), imposto de renda ($i_{ir}$), contribuição social ($i_{cs}$) e lucro líquido ($i_{ll}$), assumindo a forma abaixo.
$$
R = i_{adm}*E + i_{ind}*E + i_{cap}*C + i_{comp}*i_{ac}*C + i_{fgc}*C + \frac{i_{ll}}{1 - i_{r} - i_{cs}}*R + i_{pis}*R + i_{cof}*R 
$$

Ao isolar as variáveis e realizar as substituições e deduções algébricas obtemos a equação abaixo \footnote{No sentido que a decomposição da Receita almeja identificar mecanismos e variáveis de sua formação, não estão sendo considerados abatimentos da base de cálculo do imposto de renda e contribuição social sobre o Lucro Líquido}, onde o numerador da equação se configura no montante de custos e despesas incluídos nas operações de crédito e denominador contempla margem líquida e alíquotas dos impostos diretos e indiretos.

$$
R =  \frac{E * [i_{adm} + i_{ind} + (\frac{i_{cap}+ i_{fgc} - (i_{comp}*i_{ac})}{1 - i_{comp} - i_{fgc}})]}
{1 -  \frac{i_{ll}}{1 - i_{ir}  - i_{cs}} - i_{pis} - i_{cof}}
$$

O denominador da equação, ao ser manipulado algebricamente, assume a função de multiplicador das despesas e custo de captação ($D_{emp}$), embutindo nestes a margem líquida e alíquotas dos impostos diretos e indiretos. 
$$
i_{apl} = \frac{1}{1 -  \frac{i_{ll}}{1 - i_{ir}  - i_{cs}} - i_{pis} - i_{cof}}
$$

Ao simplificar a equação decomposta da receita, encontramos uma forma similar ao forma tautológica inicial, um montante multiplicado a uma taxa para chegar na receita. A diferença é que a forma inicial considera o capital emprestado e uma taxa de juros — onde estão embutidos todos os custos e margem de lucro. A segunda forma considera as despesas com a operação de crédito e um multiplicador destes gastos — embutindo a margem líquida e impostos variáveis. 
$$
R = D_{emp} * i_{apl} 
$$
Retornando a concepção inicial da taxa de juros ($i_{jr}$) aplicada sobre o capital emprestado ($E$), que pode ser obtida manipulando o multiplicador de aplicação ($i_{apl}$) incorporando as taxas referentes a custos, despesas e provisões.
$$
i_{jr} = \frac{i_{adm} + i_{ind} + (\frac{i_{cap}+ i_{fgc} - (i_{comp}*i_{ac})}{1 - i_{comp} - i_{fgc}})}{1 -  \frac{i_{ll}}{1 - i_{ir}  - i_{cs}} - i_{pis} - i_{cof}}
$$
$$
R = E * i_{jr} 
$$

Assumindo que as receitas de operações de créditos ($E$) podem ser decompostas de acordo com a origem: capital próprio ($E_{Pr}$) e depósitos a vista ($E_{dav}$), remunerados a um custo de oportunidade ($i_{copr}$ e $i_{coav}$) — já que não são remunerados — e depósitos a prazo ($dap$) remunerados à uma taxa de captação  ($i_{Cap}$), a receita das operações de crédito podem ser obtidas pelo somatório das equações abaixo.

$$\begin{aligned}
R_{pr} = \frac{E_{pr} * [i_{adm} + i_{ind}] + i_{copr}}
{1 -  \frac{i_{ll}}{1 - i_{ir} - i_{cs}} - i_{pis} - i_{cof}}
\end{aligned}$$

$$\begin{aligned}
R_{dap} = \frac{E_{dap} * [i_{adm} + i_{ind} + (\frac{i_{cap}+ i_{fgc} - (i_{comp}*i_{ac})}{1 - i_{comp} - i_{fgc}})]}  {1 -  \frac{i_{ll}}{1 - i_{ir} - i_{cs}} - i_{pis} - i_{cof}}
\end{aligned}$$

$$\begin{aligned}
R_{dav} = \frac{E_{dav} * [i_{adm} + i_{ind} + i_{coav} - (\frac{(i_{comp}*i_{ac})}{1 - i_{comp}})]}{1 -  \frac{i_{ll}}{1 - i_{ir} - i_{cs}} - i_{pis} - i_{cof}}
\end{aligned}$$

$$
R = (D_{pr} + D_{dav} + D_{dap}) * i_{apl}
$$

Dessa forma o *spread ex-post*, nas formas de precificação e aplicação de juros assumem as formas abaixo, na ótica de captação e empréstimo, respectivamente.
$$\begin{aligned}
& SprEp = \frac{(D_{pr} + D_{dav} + D_{dap})* i_{apl}}{E} - (\frac{D_{cap}}{C})
\end{aligned}$$

$$\begin{aligned}
& SprEp = \frac{(E*i_{jrpr} + E*i_{jrdav} + E*i_{jrdap})}{E} - (\frac{D_{cap}}{C})
\end{aligned}$$



---
#Considerando o custo de oportunidade para operações de crédito como o Juros de Capital Próprio ($i_{jcp}$). A partir do entendimento que o juros de capital próprio total ($i_{jcpt}$) é composto das expectativas da soma do juros de capital próprio das destinado as operações de crédito ($i_{joc}$) e ao destinado as operações de serviços ($i_{jos}$).
---

Para a averiguação dos efeitos dos componentes do *spread ex-post* na rentabilidade das instituições bancárias serão utilizados modelos de regressão linear multivariada. Os modelos de regressão múltipla buscam, através de técnicas estatísticas e matemáticas, prever o comportamento de uma dada variável dependente, diante um conjunto de variáveis explanatórias \cite{hill:2010} \cite{gareth:2017}. 
$$
Y = \beta_0 + \beta_1X_1 + \beta_2X_2...\beta_nX_n + \epsilon
$$

O modelo econométrico a ser utilizado será o método de dados em painel, denominado _Cross Section_, que combina séries temporais e dados em corte transversal. Este modelo busca captar diferenças individuais de comportamento, possibilitando combinar os dados para fins de estimação e inferência, posteriormente realizados testes de regressão e estimação \cite{hill:2010}.
$$
y_{it} = \beta_{1it} + \beta_{2it}X_{2it} + \beta_{3it}X_{3it} + e_{it}
$$

O método _Cross Section_ pode ser realizado por meio de três modelos de estimação que são: i) Modelo de regressão aparentemente não relacionadas (SUR); ii) Modelo de variável binárias — efeitos fixos — e iii) modelo de componentes estocásticos — efeitos aleatórios — \cite{hill:2010}. Serão testados os três métodos buscando selecionar o mais adequado ao modelo econométrico e ao conjunto de dados.

No modelo de regressão de dados aparentemente não relacionados — SUR —, os parâmetros dos diferentes grupos em corte transversal diferem entre si, porém são constantes ao longo do tempo. Os modelos podem ser estimados com suas funções de forma conjunta ou separada, onde esta última é indicada quando há correlação dos erros \cite{hill:2010}
$$
y_{it} = \beta_{1it} + \beta_{2i}X_{2it} + \beta_{3i}X_{3it} + e_{it}
$$

No modelo de variável binárias — ou efeitos fixos —, o intercepto é abordado como um parâmetro desconhecido e fixo, onde as inferências são aplicadas somente ao cojunto de dados dos grupos do corte transversal do qual está disponível \cite{hill:2010}. 
$$
y_{it} = \beta_{11}D_{1i} + \beta_{12}D_{2i} + ... + \beta_{1,10}D_{10i} + \beta_{2}X_{2it} + \beta_{3}X_{3it} + e_{it}
$$

O modelo de componentes estocásticos — ou efeitos aleatórios —, considera cada grupo do conjunto de dados como uma amostra aleatória de uma população maior, onde os interceptos são encarrados como resultados aleatórios da distribuição populacional de interceptos de grupos, realizando assim uma inferência da população de grupos \cite{hill:2010}.
$$
y_{it} = \beta_{1i} + \beta_{2it}X_{2it} + \beta_{3it}X_{3it} + e_{it}
$$

Diante os pressupostos, o primeiro modelo irá verificar a influência das variações de variáveis componentes explícitas e implícitas do  *Spread Ex-post*, tendo no primeiro bloco variáveis microeconômicas e o segundo bloco as variáveis macroeconômicas, selecionando para o segundo modelo final somente as que apresentarem significância estatística.
$$\begin{aligned}
SprEp = &f(EPr, EAv, EAp, Atv, ImpInd, ImpId, \\ 
& Inad, MLq, DAdm, Jcp, MSh, HHI, TIns, OCap, \\ 
& CIns, Sel, Ipca, Comp, MPag, VMo, SprEa)
\end{aligned}$$

Na construção do primeiro modelo econométrico serão adotadas simplificações para variáveis de resultado, eliminando as que possuem caráter constante, as obtidas por meio de resultado e por não possuirem dados, utilizando uma *proxy*.
$$\begin{aligned}
SprEp_{it} = & \beta_{0it} + \beta_{1it}EPr_{it} + \beta_{2it}EAv_{it} + \beta_{3it}EAp_{it} + \\
&\beta_{4it}MApl_{it} + \beta_{5it}Jcp_{it}  + \beta_{6it}lnAtv_{it} + \beta_{7it}MSh_{it}  + \beta_{8it}HHI_{t} + \\
& \beta_{9it}TIns + \beta_{10it}OCap + \beta_{11it}CIns + \beta_{12it}Sel_{t-1} + \beta_{13it}Ipca_{t-1} + \\
& \beta_{14it}Com_{t} + \beta_{15it}Mpag_{t-1} + \beta_{16it}VMo_{t-1} +  \beta_{17t}SprEa_{t-1}
\end{aligned}$$

O segundo modelo econométrico testará as variáveis implícitas e explícitas com significância estatística do primeiro modelo, atuando sobre a rentabilidade bancária $Rent$, conforme modelos especificados. Para a rentabilidade será considerada a razão entre o lucro líquido ($LcrLqd$) e a Receita das Operações de crédito ($RecOpCr$).
$$\begin{aligned}
Rent_{it} = & \beta_{0it} + \beta_{1it}EPr_{it} + \beta_{2it}EAv_{it} + \beta_{3it}EAp_{it} + \\
&\beta_{4it}MApl_{it} + \beta_{5it}Jcp_{it}  + \beta_{6it}lnAtv_{it} + \beta_{7it}MSh_{it}  + \beta_{8it}HHI_{t} + \\
& \beta_{9it}TIns + \beta_{10it}OCap + \beta_{11it}CIns + \beta_{12it}Sel_{t-1} + \beta_{13it}Ipca_{t-1} + \\
& \beta_{14it}Com_{t} + \beta_{15it}Mpag_{t-1} + \beta_{16it}VMo_{t-1} +  \beta_{17t}SprEa_{t-1}
\end{aligned}$$

Diante a definição dos modelos, seguem abaixo as hipóteses conceituais baseadas em concepções teóricas obtidas na pesquisa bibliográfica e das concepções desenvolvidas durante a pesquisa. O conjunto de hipóteses se apresenta na forma objetiva incluindo as expectativas para cada variável e contemplando os dois modelos construídos, com breve explanação sobre a mesma.

$SprEp_{it}$: O *Spread Ex-post* ($SprEp$) será calculado a partir dos resultados contábeis, resultante da diferença entre a relação de receitas de operações de crédito ($RcOpCr$ — Conta 71100001) e operações de crédito média ($OpCrMe$ — Conta 16000001), e a relação de despesas de captação ($DesCap$ — Conta 81100008 ) e depósitos médio ($Dep$ — Conta 41000007). 

$$
SprEp_{it} = \frac{RcOpCr_{it}}{\frac{1}{2}(OpCr_{it} + OpCr_{it-1}) } - \frac{DesCap_{it}}{\frac{1}{2}(Dep_{it} + Dep_{it-1})}
$$

$Rent$: A rentabilidade bancária será calculada para cada instituição a partir da relação entre o lucro líquido ($LLqd$ — Conta 61800005) e as receitas das operações de crédito ($R$ — Conta 71100001).
$$
Rent_{it} = \frac{LLqd_{it}}{R_{it}}
$$

$H_{1}$: A proporção das operações de crédito com capital próprio ($EPr$) em relação as operações de crédito ($OpCr$) guarda relação direta com o *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$).

Para a proporção das operações de crédito com capital próprio ($Epr$) será considerada uma *proxy* tautológica ($OpCr = CpPr + Dep$) obtida por meio da diferença entre o total das operações de crédito ($OpCr$ — Conta 16000001) e o total dos depósitos ($DepTot$ — Conta 41000007) $CpPr = OpCr - DepTot$, sobre operações de crédito ($OpCr$ — Conta 16000001).
$$
Epr_{it} = \frac{OpCr_{it} - Dep_{it}}{OpCr_{it}}
$$

Para esta relação, presumindo que o capital próprio é limitado e seu custo de oportunidade ($CpPR$) é maior que a taxa de captação ($i_{cap}$), e não havendo custos de captação, atua com uma relação direta com o *spread ex-post*. E consequentemente atua de forma direta na rentabilidade\footnote{Aqui se espera que haja redução do nível de lucros pelo fato de o capital próprio ser limitado, sujeitos a mais riscos e que a taxa de aplicação tenha um ponto de maximização de lucros}. 

$H_{2}$: A proporção dos depósitos a vista ($EAv$) diante as operações de crédito ($OpCr$) mantém uma relação direta com *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$).

Para a proporção das operações de crédito com depósito a vista ($EAv$) será utilizada o total dos depósitos a vista ($DepAv$ — Conta 41100000) em relação as operações de crédito ($OpCr$ — Conta 16000001). 
$$
EAv_{it} = \frac{DepAv_{it}}{OpCr_{it}}
$$

Na relação entre os empréstimos e depósitos a vista e o *spread ex-post* se espera uma relação direta, uma vez que o percentual de compulsório mais elevado e a maior liquidez para os depositantes, reduzem o multiplicador bancário e aumenta a necessidade de captação, elevando o custo de oportunidade para essa operação. E uma relação direta com a rentabilidade, levando em consideração que o custo de oportunidade será maior devido a um giro menor e não havendo custos de captação.  

$H_{3}$: A proporção das operações de crédito com depósitos a prazo ($OpCrDpAp$) atuam de forma direta no *spread ex-post* ($SprEp$) e inversa com a rentabilidade bancária ($Rent$) do período.

Para a proporção das operações de crédito com depósito a prazo ($EAp$) será utilizado  o total dos depósitos a prazos ($DepAp$ — Conta 41500002) em relação operações de crédito ($OpCr$ — Conta 16000001).
$$
EAp_{it} = \frac{DepAp_{it}}{OpCr_{it}}
$$

Na relação entre os empréstimos e depósitos a prazo e o *spread ex-post* se espera uma relação indireta, possui menor taxa de recolhimento compulsório e menor necessidade de captação para a operação, e maior capapacidade de multiplicação do crédito. Em relação a rentabilidade é esperado que ocorra uma relação indireta por elevar o custo de captação. 

$H_{4}$: A proporção das despesas administrativas ($DA$) sobre as operações de crédito ($OpCr$) mantém uma relação direta com *spread ex-post* ($SprEp$) e inversa com a rentabilidade bancária ($Rent$)

Para esta variável será considerada a relação entre as despesas administrativas ($DA$ — Conta 81700006) e as operações de crédito ($OpCr$ — Conta 16000001). Espera-se que ocorra uma relação direta com *spread ex-post* ($SprEp$), pois este valor estar embutido na taxa de aplicação, e inversa com a rentabilidade bancária ($Rent$), pois implica em maiores despesas. 
$$
DAdm_{it} = \frac{DA_{it}}{OpCr_{it}}
$$

$H_{5}$: O volume das operações de crédito ($Vol$) atua de forma inversa no *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$)

Para esta variável será considerado o logarítimo natural das operações de crédito ($OpCr$ — Conta 16000001). Espera-se uma relação inversa com o *spread ex-post* ($SprEp$), uma vez que um maior volume durante o período permite redução na taxa de aplicação, e redução de custos operacionais, mantendo uma relação direta com a rentabilidade. 
$$
Vol_{it} = \ln(OpCr_{it})
$$

Espera-se que para garantir uma maior volume de operações de crédito($Vol$) e consequentemente elevação do lucro e rentabilidade as instituições atuam na redução das margens fazendo que ocorra uma redução do *spread ex-post* e elevação da rentabilidade.

$H_{6}$: O tamanho da instituição ($Tam$) mantém uma relação inversa com o *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$)

Para a variável de tamanho da instituição ($Tam$) será considerado o logarítimo natural do ativo total ($AtvToT$ — Conta 39999993). É esperada um relação inversa com o *spread*, pois com maior poder de mercado, as instituições podem reduzir suas margens para aumentar volume, o que implicaria em uma relação direta com a rentabilidade. 
$$
Tam_{it} = \ln(AtvTot_{it})
$$

$H_{7}$: O risco de crédito da carteira ($RC$) mantém uma relação direta com o *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$)

Para o risco de crédito será utilizada a participação da média ponderada das provisões de risco das operações de crédito ($POC$ — Contas 31100003, 31200006, 31300009, 31500005, 31600008, 31700001, 31800004, 31900007), diante os percentuais de provisões legais para cada nível de risco, sobre as provisões de risco para operações de crédito ($POC$). 
$$
RC_{it} = \frac{\frac{\sum_{RC = Aa}^HOC_{RC}*P_{RC}}{\sum_{}P_{RC}}}{\sum_{OC_{RC}}}
$$

Para a composição das operações de crédito espera-se influência direta no *spread* e na rentabilidade no curto prazo, pois operações com maior riscos tendem retornar maiores lucros.



$H_{8}$: A participação de mercado das instituições ($MkSh$) guarda relação inversa com o  *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$)

Para a participação de mercado da instituições será utilizada a participação volume das operações de crédito ($OpCr$ — Conta 16000001) de cada instituição, sobre o total das operações de crédito para cada período. 
$$
MkSh_{it} = \frac{OpCr_{it}}{\sum_{t=1}^nOpCr_{it}}
$$

Para a influência da participação de mercado das instituições sobre o *spread* espera-se uma relação inversa, pois com maior poder de mercado a instituição garante um maior volume de operações, reduzindo o *spread*, bem como reduzir custos operacionais influenciando de forma direta a rentabilidade.

$H_{9}$: o grau de concentração de mercado ($GC$) mantém relação direta com *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$)

Para a variável de grau de concentração de mercado será utilizado o índice HHI, usando como medida as receitas das operações de crédito ($R$ — Conta 71100001) e o número de instituições para cada período ($n$). Espera-se que quanto maior a concentração de mercado, maior serão os níveis de *spread* e rentabilidade.
$$
GC_{it} = \frac{1}{n} + n\frac{\sum_{i=1}^{n}(\frac{R_{it} - 1}{n})^2}{n}
$$

$H_{10}$: O tipo de instituição ($TpIns$) exerce influência na determinação do nível de *spread ex-post* ($SprEp$) e nível da rentabilidade bancária ($Rent$)

Para a variável tipo de instituição ($TpIns$) serão introduzidas variáveis binárias (*dummy*) referente a taxonomia das instituições bancárias sendo: $D_{11}$ — Banco Comercial; $D_{2}$ — Banco de Investimento; $D_{3}$ — Banco de Desenvolvimento; $D_{4}$ — Caixa Econômica e $D_{5}$ — Banco Múltiplo.

$$\begin{aligned}
D_{1} = \lbrace 1_{i} = 1 ; 0_{i} \neq 1 \rbrace \\
D_{2} = \lbrace 1_{i} = 2 ; 0_{i} \neq 2 \rbrace \\
D_{3} = \lbrace 1_{i} = 3 ; 0_{i} \neq 3 \rbrace \\
D_{4} = \lbrace 1_{i} = 4 ; 0_{i} \neq 4 \rbrace \\
D_{5} = \lbrace 1_{i} = 5 ; 0_{i} \neq 5 \rbrace
\end{aligned}$$
 
$H_{11}$: O caráter da instituição ($CrIns$) atua na determinação do nível do 
*spread ex-post* ($SprEp$) e no nível da rentabilidade bancária ($Rent$)

Para o caráter da instituição serão inseridas variáveis binárias (*dummy*) referentes ao caráter: $D_{6}$ — público ou $D_{7}$ privado.

$$\begin{aligned}
D_{6} = \lbrace 1_{i} = 6 ; 0_{i} \neq 6 \rbrace \\
D_{7} = \lbrace 1_{i} = 6 ; 0_{i} \neq 7 \rbrace \\
\end{aligned}$$

$H_{12}$: A taxa Selic $Sel$ mantém uma relação direta  no *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$)

Para a variável Selic ($Sel$) no modelo, será considerada a taxa Selic Over, sendo a média diária das operações no Sistema Especial de Liquidação e Custódia, defasada em 1 período. Será utilizada a série $BM12_TJOVER12$ obtida no banco de dados do IPEA.
$$
Sel_{t-1} = \frac{1}{n}\sum_{t=-1}^{n-1}SelDrAn
$$

Se espera que a taxa selic exerça influência simultaneamente no custo de captação e aplicação porém com maior efeito sobre a aplicação afetando de forma direta o *spread*. Aferando a rentabilidade de forma direta, uma vez que influencia o volume das captações a prazo e maiores níveis de lucro. 

$H_{13}$: A taxa de inflação ($Ipca$) atua de forma direta no *spread ex-post* ($SprEp$) e inversa com a rentabilidade bancária ($Rent$). 

Para o Índice de Preços ao Consumidor Amplo ($IPCA$) será utilizada série ($PRECOS12_IPCAG12$), obtida no portal do IPEA, ajustada para o período amostral e defasada em 1 (hum) período.
$$
Ipca_{t-1} = \frac{1}{n}\sum_{t=-1}^{n-1}IpcaMs
$$

Para o efeito das variações do IPCA sobre o *spread ex-post* espera-se que atue de forma direta, dependendo das sensibilidades de tomadores e investidores e da instituição a esta variável e de forma inversa com a rentabilidade, por influenciar a demanda por operações de crédito.

$H_{14}$: A taxa de compulsório ($Com$) atua de forma direta no *spread ex-post* ($SprEp$) inversa com a rentabilidade bancária ($Rent$)

Para o compulsório será utilizada somatória dos volumes de recolhimento compulsório de recursos a vista ($Série 1850$) e recursos a prazo ($série 1850$) ponderados pelo total de captações a vista (Contas 41100000 ) e total de captações a prazo (Contas 41100002).
$$
Comp_{t} = \frac{RcDAv_{t} + RcDAp_{t}}{\sum_{t=1}^{n}DAv_{it} + \sum_{t=1}^{n}DAp_{it}}
$$

A elevação do nível de compulsório reduz o multiplicador bancário e aumenta a necessidade de captações para atendimento das operações crédito e consequentemente os custos de captação atuando de forma direta com o *spread* e inversa com rentabilidade.

$H_{15}$: O volume dos meios de pagamentos $Mpag$ atua de forma inversa no *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$)

Para a variável meios de pagamentos ($Mpag$) serão utilizados os dados os meios de pagamentos amplos ($MPM4$) da série $27815$ ajustados para o período do conjunto de dados. Espera-se que as variações dos meios de pagamentos atuem de forma indireta no *spread* e direta a rentabilidade bancária. 
$$
Mapg_{t} = \ln(MPM4_{t-1})
$$

$H_{16}$: A velocidade da moeda ($VelMo$) atua de forma inversa no *spread ex-post* ($SprEp$) e direta com a rentabilidade bancária ($Rent$)
$$
VelMo_{t} = \frac{Pib_{t-1}}{BMr_{t-1}}
$$

$H_{17}$: O *spread ex-ante* ($SprEa_{t-1}$) atua de forma direta *spread ex-post* ($SprEp$) e direto com a rentabilidade bancária ($Rent$)

Para o *spread ex-ante* será utilizada a série $sgs-20783$ defasada em 1 período, obtida no portal de dados abertos o Banco Central. Espera-se que esta variável atue capturando as expectativas das instituições financeiras exercendo influência direta no *spread ex-post* e direta na rentabilidade bancária.
$$
SprEa_{t} = SEA_{t-1}
$$
A \autoref{tab:datasource} traz um resumo dos dados a serem utilizados na construção do modelo, trazendo uma breve descrição, fonte, código e periodicidade.

\begin{table}
\captionof{table}{Descrição e origens dos dados para construção dos modelos}
<table class="table" style="font-size: 10px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Nome </th>
   <th style="text-align:left;"> Descrição </th>
   <th style="text-align:left;"> Identificação </th>
   <th style="text-align:left;"> Periodicidade </th>
   <th style="text-align:left;"> Fonte </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> Demonstrações Financeiras </td>
   <td style="text-align:left;width: 5cm; "> Balancetes (IFs e Conglomerados) </td>
   <td style="text-align:left;width: 3cm; "> 370 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> Banco Central </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> PIB </td>
   <td style="text-align:left;width: 5cm; "> O Produto Interno Bruto (PIB) denominado como PIB mensal é um indicador com frequência mensal produzido pelo Banco Central do Brasil (BCB) </td>
   <td style="text-align:left;width: 3cm; "> BM12_PIB12 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> IPEA </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> Selic Over </td>
   <td style="text-align:left;width: 5cm; "> Taxa de juros apurada nas operações de empréstimos de um dia entre as instituições financeiras que utilizam títulos públicos federais como garantia </td>
   <td style="text-align:left;width: 3cm; "> BM12_TJOVER12 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> Banco Central </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> Meios de Pagamentos </td>
   <td style="text-align:left;width: 5cm; "> Meio de Pagamento - Ampliado - M4 - fim de período </td>
   <td style="text-align:left;width: 3cm; "> BM12_M4NCN12 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> IPEA </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> IPCA </td>
   <td style="text-align:left;width: 5cm; "> IPCA Geral </td>
   <td style="text-align:left;width: 3cm; "> PRECOS12_IPCAG12 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> IPEA </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> Compulsório Poupança </td>
   <td style="text-align:left;width: 5cm; "> Depósitos de poupança em espécie (remunerados) </td>
   <td style="text-align:left;width: 3cm; "> 1848 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> Banco Central </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> Compulsório a vista </td>
   <td style="text-align:left;width: 5cm; "> Recursos a vista em espécie (não remunerados) </td>
   <td style="text-align:left;width: 3cm; "> 1849 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> Banco Central </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> Compulsório a prazo </td>
   <td style="text-align:left;width: 5cm; "> Depósitos a prazo em espécie (remunerados) </td>
   <td style="text-align:left;width: 3cm; "> 1850 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> Banco Central </td>
  </tr>
  <tr>
   <td style="text-align:left;width: 3cm; font-weight: bold;"> Base Monetária Ampliada </td>
   <td style="text-align:left;width: 5cm; "> Base Monetária Ampliada (saldo em final de período) </td>
   <td style="text-align:left;width: 3cm; "> 1833 </td>
   <td style="text-align:left;width: 2cm; "> Mensal </td>
   <td style="text-align:left;width: 2cm; "> Banco Central </td>
  </tr>
</tbody>
</table>
\label{tab:datasource}
\fonte{Desenvolvido com base nas fontes citadas}
\end{table}

Na fase analítica será aplicada a técnica de _Cross Validation k-fold_, que visa dividir de forma aleatória o conjunto de dados em ```k``` grupos, de dimensão aproximada. Onde o primeiro grupo é tratado como conjunto de validação, e o método é ajustado no ```k - 1``` conjuntos restantes. Esse método é útil para testar variáveis, selecionar parâmetros, função preditiva e acurácia para seleção do modelo final  \cite{gareth:2017}.

O mecanismo do _k-fold_ consiste em calcular o erro quadrático médio nas observações do grupo retido, repetindo esse procedimento ```k``` vezes, onde a cada rodada, um grupo diferente é tratado como um conjunto de validação. Este processo resulta em ```k``` estimativas do erro de teste, MSE1, MSE2,..., MSEk. A estimativa de CV _k-fold_ é obtida pela média desses valores \cite{gareth:2017}.
$$
CV_{(k)} = \frac{1}{k}\sum_{i=1}^{k}MSE  
$$

Serão testados métodos de aprendizado não supervisionado. O aprendizado não supervisionado tende a ser mais subjetivo para análises com foco preditivo. O aprendizado não supervisionado geralmente é empregado como uma etapa da análise exploratória de dados, não há como verificar o resultado pois não é conhecida a verdadeira resposta \cite{gareth:2017}.

Entre os métodos de aprendizagem não supervisionada estão o _Principal Component Analysis_ e o _Clustering_. No método de _Clustering_, a dinâmica está em dividir o conjunto de dados em subgrupos distintos que contenham homogeneidades entre as observações. Existem as técnicas _K-Means_,  _Hierarchical Clustering_ e _Practical Issues in Clustering_ \cite{gareth:2017}

A técnica de aprendizado não supervisionado a ser aplicada será o _K-Means_, que possui como característica o particionamento do conjunto de dados em k grupos — _clusters_ —, especificados e não sobrepostos, o que implica que cada observação pertence ao menos a um grupo e não pertence a nenhum outro grupo. O propósito principal é buscar a mínima variação dentro de cada _cluster_   \cite{gareth:2017}.
$$
minimizar_{C_1,...,C_k} \sum_{k = 1}^{K}\frac{1}{|C_k|}\sum_{i,i' E C_k} \sum_{j=1}^{p}(x_{ij} - x_{i'j})^2 
$$

Este capítulo buscou demonstrar os principais conceitos e procedimentos metodológicos a serem seguidos para realização das análises dos objetivos propostos. No próximo capítulo serão aplicados os procedimentos metodológicos para tratamento e análise de dados e estimação dos modelos.

<!--chapter:end:04-method.Rmd-->

\postextual

\addtocontents{toc}{\vspace{-2pt}}

---
#\DoubleSpacing

#\printbibliography[heading=bay, title={REFERÊNCIAS}]
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
