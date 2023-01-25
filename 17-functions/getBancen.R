getBacen <- 
        function(serie, data.inicial='', data.final='' , name=''
                 ){
                for(i in serie){
                urlbase <- 
                        list(paste('http://api.bcb.gov.br/dados/serie/bcdata.sgs.',
                              serie,
                              '/dados?formato=csv',
                              '&dataInicial=',
                              data.inicial,
                              '&dataFinal=',
                              data.final, 
                              sep = ''))
                #return(urlbase)
                }
                df <- list('')
                n <- 0
                while(n < length(urlbase[[1]])){
                        n <-  n + 1
                        df[[n]] <- read.csv(urlbase[[1]][n],
                                            sep = ';', dec = ','
                                            , col.names = c('Data', name[n])
                        )
                }
                require(plyr)
                join_all(df)
        }
