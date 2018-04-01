num <- as.integer(readline(prompt = "enter the number"))
factoria <- 1
if(num == 0){
  print("Sorry the factorial of the number does not exist")
} else if(num==1){
  print("The factorail of the number is 0")
} else {
  for (a in 1:num) {
    factoria=factoria*a
  }
  print(paste("the factorial of the number",num,"is",factoria))
}