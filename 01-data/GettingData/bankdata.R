data.bank.location <- "~/Desktop/04-DISSERTATION/17-functions/databank.R"
packages.R <- "~/Desktop/04-DISSERTATION/09-packages/packages.R"
data.zip <- "~/Desktop/04-DISSERTATION/01-data/bacen/bankdata/ZIP/"
data.csv <- "~/Desktop/04-DISSERTATION/01-data/bacen/bankdata/CSV/"
balance.location <- "~/Desktop/04-DISSERTATION/01-data/bacen/bankdata/"

source(data.bank.location)
source(packages.R)

#months.c <- c(paste("0", seq(1,9,1),sep = ""), 10,11,12)
#months.i <- c("01","02","03", "04", "05", "06", "07", "08", "09", "10", "11")

#banks.data.2001.2019 <- databank(ano.inicial = 2001, ano.final = 2019, 
#                                 destino.zip = data.zip,
#                                 destino.csv = data.csv,
#                                 month.base = months.c)

#banks.data.2020 <- databank(ano.inicial = 2020, ano.final = 2020, 
#                                 destino.zip = data.zip,
#                                 destino.csv = data.csv,
#                                 month.base = months.i)

#saveRDS(banks.data.2001.2019, file = paste(balance.location, "banks.data.2001.2019.rds", sep = ""))
#saveRDS(banks.data.2020, file = paste(balance.location, "banks.data.2020.rds", sep = ""))

#combine(banks.data.2001.2019,banks.data.2020)
#banks.data <- c(banks.data.2001.2019, banks.data.2020)
#saveRDS(banks.data, file = paste(balance.location, "banks.data.rds", sep = ""))

