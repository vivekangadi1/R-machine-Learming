#Creating DAta Frame


#Importing and exporting the data
read.csv("filename.csv")
write.csv(df,file = "filename.csv")
#Getting Information about the data Frame
ncol() #number of cols in the dataset
nrow() #number of rows in the dataset
colnames() #name of the columns
rownames() #name of the rows
str() #structure of the dataframe
summary() #satistical information about the each columns median,mean,max,
#REffrencing the cell
df[[5,2]]
df[[5,"colname"]]
#Reffrencing the rows
df[1,]
#Reffrencing th column
df[,1]
df$col.name.1....c1
df[,'colname'] #returns vector values
df[['colname']] # returns dataframe
#Adding the rows
rbind(df,df) #adding the rowns from two different dataset
#Adding the column
#setting the column names
#Selecting multiple rows
mtcars[mtcars$mpg>22,]
mtcars[(mtcars$mpg>22) & (mtcars$cyl == 6),]
#selecting multiple columns
#DEaling with missing data
is.na(df)
any(is.na(df))
df[is.na(df)]<- 0
any(is.na(df$col.name.1....c1))
order(df['temp']) #asc
order(-df['temp']) #dsc
df[order(df['temp'])]
