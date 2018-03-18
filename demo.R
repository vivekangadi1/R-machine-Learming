goog <- c(450,460,470,480,490)
mfst <- c(220,230,240,250,260)

stocks <- c(goog,mfst)
stocks.matrix<- matrix(stocks,byrow = T,nrow = 2)

days <- c('mon','tue','wed','thrus','friday')
sr.names <- c("goog","mfst")
colnames(stocks.matrix) <- days
rownames(stocks.matrix) <- sr.names
#rowsum(stocks.matrix)
#colSums(stocks.matrix)

print(stocks.matrix)

matrix.market <- matrix(1:50,nrow = 5,byrow = T)

print(matrix.market)

#nominal no order
#ordinal order

#factor

temps <- c('cold','hot','med','cold','cold','med','hot','lol')
fact.temp.nominal <- factor(temps)
print(fact.temp.nominal)

fact.temp.ordinal <-factor(temps,ordered = T,levels = c('cold','med','hot'))
print(fact.temp.ordinal)