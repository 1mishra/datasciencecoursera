##cacheSolve
# calculates the inverse of special vector

cacheSolve <- function(x, ...) {
        I <- x$getinverse()
        
        # checks & gets if the inverse has been calculated before
        if(!is.null(I)) {
                message("getting cached data")
                return(I)
        }
        data <- x$get()
        I <-  solve(data, ...)
        x$setinverse(I)
        I
}