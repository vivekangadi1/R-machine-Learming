num <- as.integer(readline(prompt = "enter the number"))

flag <- 0
if(num >1){
  for (i in 2:(num-1)) {
    if(num %% i){
      flag=1
    }
  }
  if(num==2) flag=1
  if(flag==0){
    print("it is a prime number")
  }
  else{
    print("it is a non prime number")
  }
}