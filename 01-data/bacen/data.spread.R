spread.moct <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20783/dados?formato=csv', 
                        sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT'))
spread.moct
spread.icc <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27443/dados?formato=csv', 
                       sep = ';', dec = ',', col.names = c('data', 'Spread.ICC'))

spread.icc.cd <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27449/dados?formato=csv', 
                          sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CD'))

spread.icc.cl <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27446/dados?formato=csv', 
                          sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CL'))

spread.icc.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27445/dados?formato=csv', 
                          sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.PJ'))

spread.icc.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27444/dados?formato=csv', 
                          sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.PJ'))

spread.icc.cnr <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27695/dados?formato=csv', 
                           sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CNR'))

spread.icc.cd.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27451/dados?formato=csv', 
                             sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CD.PF'))

spread.icc.cd.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27450/dados?formato=csv', 
                             sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CD.PJ'))

spread.icc.cl.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27448/dados?formato=csv', 
                             sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CL.PF'))

spread.icc.cl.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27447/dados?formato=csv', 
                             sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CL.PJ'))

spread.icc.cnr.rl.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27700/dados?formato=csv', 
                                 sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CNR.RL.PF'))

spread.icc.cnr.rl.pj <- 
        read.csv('https://api.bcb.gov.br/dados/serie/bcdata.sgs.27699/dados?formato=csv', 
                                 sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CNR.RL.PJ'))

spread.icc.cnr.rl <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27698/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data',  'Spread.ICC.CNR.RL'))

spread.icc.cnr.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27697/dados?formato=csv', 
                              
                              sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CNR.PF'))

spread.icc.cnr.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27696/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data', 'Spread.ICC.CNR.PJ'))

spread.moct.nr <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27631/dados?formato=csv', 
                           sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.NR'))

spread.moct.rd <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20825/dados?formato=csv', 
                           sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.RD'))

spread.moct.rl <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20786/dados?formato=csv', 
                           sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.RL'))

spread.moct.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20785/dados?formato=csv', 
                           sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.PF'))

spread.moct.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20784/dados?formato=csv', 
                           sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.PJ'))

spread.moct.nr.rl.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27636/dados?formato=csv', 
                                 sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.NR.RL.PF'))

spread.moct.nr.rl.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27635/dados?formato=csv', 
                                 sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.NR.RL.PJ'))

spread.moct.nr.rl <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27634/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.NR.RL'))

spread.moct.nr.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27633/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.NR.PF'))

spread.moct.nr.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.27632/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.NR.PJ'))

spread.moct.rd.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20837/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.RD.PF'))

spread.moct.rd.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20826/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.RD.PJ'))

spread.moct.rl.pf <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20809/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.RL.PF'))

spread.moct.rl.pj <- 
        read.csv('http://api.bcb.gov.br/dados/serie/bcdata.sgs.20787/dados?formato=csv', 
                              sep = ';', dec = ',', col.names = c('data', 'Spread.MOCT.RL.PJ'))



