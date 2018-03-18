library(dplyr)
df <- mtcars
print(df)
filter(df,mpg>20,cyl==6)
arrange(df,cyl,desc(wt)) #check this out for solution 

select(df,mpg,hp)
distinct(df,gear)
#create  a new column usinf dplye
mutate(df,performance=hp/wt)
summarise(df,avg_mpg = mean(mpg,na.rm = T))

df %>% filter(cyl==6) %>% summarise(avg_hp=mean(hp))
head(df)
