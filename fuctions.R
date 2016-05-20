add2 <- function(x,y)
{
x+y
}
above <- function(x, n=10)
{
  use <- x>n 
  x[use]
}

#Matrix and dataframe
columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y) #calculate number of columns
  means <- numeric(nc) #empty vector fill it as we go thru columns
  for(i in 1:nc) {
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means
}

