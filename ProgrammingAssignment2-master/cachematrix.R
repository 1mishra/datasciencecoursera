##Matrix inversion is usually a costly computation and there may be some benefit to
##caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to matrix inversion 
##that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.
       
#makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        #set the value of the matrix
        
        I <- NULL
        set <- function(y) {
                x <<- y
                I <<- NULL
        }
        
        #get the value of the matrix
        get <- function() x
        
        #set the value of the inverse 
        setinverse <- function(inverse) I <<- inverse
        #get the value of the inverse
        getinverse <- function() I
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


#cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed), 
#then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        I <- x$getinverse()
        
        # retrieves the inverse matrix x, if it has been calculated before
        if(!is.null(I)) {
                message("retrieving cached data")
                return(I)
        }
        # otherwise, solves the matrix
        data <- x$get()
        I <-  solve(data, ...)
        x$setinverse(I)
        I
}