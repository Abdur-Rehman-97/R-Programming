#function that add 2 numbers
add2 <- function(x,y){
  x + y
}

above <- function(x,n){
  use <- x > n
  x[use]
}

#function give greator values or above a specific values
above <- function(x,n = 10){
  use <- x > n
  x[use]
}

#function that calculate the column mean of a matrix
columnmean <- function(y) {
  nc <- ncol(y) #nc stand for number of columns
  means <- numeric(nc) #initialize vector with length of nc
  #for loop from 1 to length of nc 
  for (i in 1:nc) {
    means[i] <- mean(y[,i])
  }
  means
}

#function that make power 
make.power <- function(n) {
  pow <- function(x){
    x^n
  }
  pow
}
cube <- make.power(3)



