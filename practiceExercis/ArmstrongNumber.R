num <- as.integer(readline(prompt = "enter the number"))

sum <- 0

temp <- num
while (temp >0) {
  digit <- temp %% 10
  sum <- sum + (digit^3)
  temp<- floor(temp / 10)
}

if(sum==num){
  print(paste(num, "is an Armstrong number",sum))
}else{
  print(paste(num, "is not an Armstrong number",sum))
}

for (i in 1:num) {
  print(paste(num,'x', i, '=', num*i))
}