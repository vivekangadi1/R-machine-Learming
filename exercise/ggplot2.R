library(ggplot2)
library(ggthemes)

head(mpg)

pl <- ggplot(mpg,aes(x=hwy))
print(pl + geom_histogram(fill="blue"))
pl <- ggplot(mpg,aes(x=manufacturer))
print(pl + geom_bar(aes(fill=factor(cyl))))


head(txhousing)
pl <- ggplot(txhousing,aes(x=volume,y = sales))
print(pl+geom_point(alpha=0.4,color="blue")+geom_smooth(color='red'))
