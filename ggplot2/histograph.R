#install.packages("ggplot2")
#install.packages("ggplot2movies")
# https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

library(ggplot2)
library(ggplot2movies)
#histograph
#data and asthetics
pa <- ggplot(movies,aes(x=rating))
print(pa + geom_histogram())
#geometrics
print(pa + geom_histogram(binwidth = 0.001))
print(pa + geom_histogram(binwidth = 0.1))
print(pa + geom_histogram(binwidth = 0.1,color='red'))
print(pa + geom_histogram(binwidth = 0.1,color='red',fill='pink'))
pa2 <- pa + geom_histogram(binwidth = 0.1,color='red',fill='pink',alpha=2)

pa3 <- pa2 +xlab('movie Rating') + ylab('counting')

print(pa3 + ggtitle("my title"))


print(pa + geom_histogram(binwidth = 0.1,aes(fill =..count..)))


#scatterplots

#data and ASthetics

pl <- ggplot(mtcars,aes(x=wt,y=mpg))

#geometry

print(pl + geom_point())

print(pl + geom_point(size=5))
print(pl + geom_point(alpha=0.5,size=10))


print(pl + geom_point(aes(size =hp)))
print(pl + geom_point(aes(size =cyl)))
print(pl + geom_point(aes(size=factor(cyl))))
print(pl + geom_point(aes(shape =factor(cyl)),size=5))
print(pl + geom_point(aes(shape =factor(cyl),color=factor(cyl)),size=5))
pl2 <- pl + geom_point(aes(color=hp),size=5)
pl2+scale_color_gradient(low = 'blue',high = 'red')



#BARPLOTS

#data and asthetics
pl <- ggplot(mpg,aes(x=class))

#geometric
print(pl+geom_bar())
print(pl+geom_bar(aes(fill=drv)))
print(pl+geom_bar(aes(fill=drv),position = 'dodge'))
print(pl+geom_bar(aes(fill=drv),position = 'fill'))


#BOXPLOTS

#2 variable plot

pl <- ggplot(movies,aes(x=year,y=rating))
print(pl + geom_bin2d())
print(pl + geom_bin2d()+scale_fill_gradient(low = "green",high = "red"))
