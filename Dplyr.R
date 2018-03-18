

library(dplyr)
library(nycflights13)
head(filter(flights,month==11,day==3,carrier =='AA'))
head(slice(flights,1:10))
head(arrange(flights,year,month,day,arr_time))
head(select(flights,carrier,arr_time))
head(rename(flights,airline_carrier=carrier))
head(distinct(select(flights,carrier)))
head(mutate(flights,new_col = arr_delay-dep_delay))
head(summarise(flights,avg_air_time=mean(air_time,na.rm = true)))

# pipe operator
library(tidyr)
library(data.table)

#gather

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
head(df %>% gather(Quarter,Revenue,Qtr1:Qtr4))

stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks

stocksm %>% spread(stock, price)

stocksm %>% spread(time, price)

df <- data.frame(x = c(NA, "a.x", "b.y", "c.z"))

df %>% separate(x, c("ABC", "XYZ"))

unite_(mtcars, "vs.am", c("vs","am"),sep = '.')

mtcars %>% unite(vs_am, vs, am) %>%  separate(vs_am, c("vs", "am"))