hello_you <- function(nam){
  print(paste(nam,"Hello"))
}

hello_you('vivek')

product_number <- function(numb1,numb2){
  return(numb1*numb2)
}

print(product_number(5,15))

chec.num <- function(num1,vec1) {
  for (variable in vec1) {
    if(variable == num1){
      return(T)
    }
  }
  return(F)
}

print(chec.num(5,c(2,4,27,9,5)))

chec.num1 <- function(num1,vec1) {
  v1 <- 0
  for (variable in vec1) {
    if(variable == num1){
      v1 <- v1+1
    }
  }
  return (v1)
}

print(chec.num1(5,c(2,4,27,9,5,5,5)))


bar_count <- function(num11){
  
  v11<-num11 %% 5
  v12 <- num11/5
  
  return(round((v11+v12),0))
}

print(bar_count(6))