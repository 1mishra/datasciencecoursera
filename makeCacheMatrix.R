##makeCacheMatrix

#set the value of matrix

makeCacheMatrix <- function(x = matrix()) {
        #set the value of the vector
        
        I <- NULL
set <- function(y) {
        x <<- y
        I <<- NULL
}

#get the value of the vector
get <- function() x

#set the value of the inverse 
setinverse <- function(inverse) I <<- inverse
#get the value of the inverse
getinverse <- function() I
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}
