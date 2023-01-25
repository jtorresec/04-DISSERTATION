source('~/Desktop/04-DISSERTATION/17-functions/getBancen.R')

#l.icc.total <- '01-data/bacen/icc/icc.total.csv'

series.icc <- list(25351, 27645, 25352, 27646, 25353, 27647)
names.icc <- c('ICC - Total % a.a.', 'ICC - Crédito não rotativo - Total',
               'ICC - Pessoas jurídicas - Total', 
               'ICC - Crédito não rotativo - Pessoas jurídicas - Total',
               'ICC - Pessoas físicas - Total	% a.a.',
               'ICC - Crédito não rotativo - Pessoas físicas - Total')

icc <- getBacen(serie = 25351, name = 'ICC')
icc.total <- getBacen(serie =  series.icc,
                      data.inicial = '01/01/2013', 
                      data.final =  '01/07/2020',
                      name = names.icc)
