library(data.table)
library(ggplot2)
df <- read.csv("Economist_Assignment_Data.csv")
head(data)

pl <- ggplot(data,aes(x=CPI,y=HDI)) 
print(pl+geom_point(aes(color=Region),shape=1,size=4)+geom_smooth(aes(group=1),
                                                                  method = 'lm',
                                                                  formula = y ~ log(x),
                                                                  se = FALSE,
                                                                  color = 'red'))
print(pl+geom_point(aes(color=Region),shape=1,size=4)+geom_smooth(aes(group=1),
                                                                  method = 'lm',
                                                                  formula = y ~ log(x),
                                                                  se = FALSE,
                                                                  color = 'red')
+geom_text(aes(label=Country)))
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")
pl3 <- pl + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)
print(pl3+geom_smooth(aes(group=1),
                      method = 'lm',
                      formula = y ~ log(x),
                      se = FALSE,
                      color = 'red')+geom_point(aes(color=Region),shape=1,size=4)
      +scale_x_continuous(aes(name = CPI,limits=3,breaks = 1:10))
      +scale_y_continuous(aes(name = HDI,limits=3,breaks = 1:10)))
