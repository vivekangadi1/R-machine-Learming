Age <- c(22,25,26)
Weight <- c(150,165,120)
Sex <- c('M','M','F')

df <- data.frame(Age,Weight,Sex)

colnames(df) <- c('Age','Weight','Sex')
rownames(df) <- c('sam','Frank','Amy')

print(df)

is.data.frame(mtcars)

mat <- matrix(1:25,nrow = 5)

df1 <- as.data.frame(mat)

print(df1)

df2 <- mtcars

print(head(df2))

mean(df2$mpg)

df2[df2$cyl>5,]
df2[c('am','gear','carb')]

df2$performance <- df2$hp/df2$wt

mean(df2[df2$hp>100 & df2$wt>2.5,]$mpg)
df['Hornet Sportabout',]$mpg