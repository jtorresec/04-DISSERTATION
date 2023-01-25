databank <- function(ano.inicial, ano.final, month.base="", destino.zip="", destino.csv=""){
        year.base <- seq(ano.inicial, ano.final, 1)
        df <- list('')
        n <- 0
        while(n < length(year.base)){
                n <-  n + 1
                df[[n]] <- paste(year.base[n], month.base, sep = "")
        }
        url <- list('')
        i <- 0
        while(i < length(df)){
                i <- i + 1
                url[i] <- list(paste("www4.bcb.gov.br/fis/cosif/cont/balan/bancos/",
                                     df[[i]],
                                     "BANCOS.ZIP",
                                     sep = ""))
        }
        
        require(plyr)
        d.f <- ldply(df, data.frame)
        d.f <- as.character(d.f$X..i..)
        
        #for(c in url){
                x <- 0
                while(x < length(df)){
                        x <- x + 1 
                        download.file(url = url[[x]],
                                      destfile =  paste(destino.zip,
                                                        df[[x]],
                                                        ".ZIP",
                                                        sep = ""
                                      )
                        )
                }
        #}
        
        #for(h in d.f){
                j <- 0
                while(j < length(d.f)){
                        j <- j + 1
                        unzip(zipfile = paste(destino.zip,
                                              d.f[[j]],
                                              ".ZIP",
                                              sep = ""
                        ),
                        exdir = destino.csv
                        )
                }
        #}
        data <- list("")
        m <- 0
        while(m < length(d.f)){
                m <- m + 1
                data[[m]] <- read.csv(paste(destino.csv,
                                            d.f[[m]],
                                            "BANCOS.CSV",
                                            sep = ""),
                                      sep = ";",
                                      header = FALSE,
                                      dec = ",",
                                      encoding = "utf-8",
                                      #col.names = c("DATA", "CNPJ", "NOME DA INSTITUIÇÃO",
                                       #             "ATRIBUTO","DOCUMENTO","CONTA",
                                        #            "NOME DA CONTA","SALDO"),
                                      stringsAsFactors = FALSE
                )
        }
        
        #require(plyr)
        #require(dplyr)
        #require(readr)
        #bankdata <- ldply(data, data.frame)
        #bankdata <- bankdata %>% filter(ve != "", DATA  != "DATA") #%>% 
                #type_convert(col_types = cols(DATA = col_character(),
                 #                             CNPJ = col_character(),
                  #                            NOME.DA.INSTITUIÇÃO = col_character(),
                   #                           ATRIBUTO = col_character(),
                    #                          DOCUMENTO = col_character(),
                     #                         CONTA = col_character(),
                      #                        NOME.DA.CONTA = col_character(),
                       #                       SALDO = col_number())) %>%
               # transform(DATA = as.yearmon(paste(str_sub(DATA, start = 1, end = -3),
                #                                  str_sub(DATA, start = 5), sep = "-")))
        
        
        return(data)
}
