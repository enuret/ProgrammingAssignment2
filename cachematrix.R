## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        im <- NULL
        set <- function(y) {
                x <<- y
                # clean cached inversed matrix
                im <<- NULL
        }
        get <- function() x
        setinversed <- function(inversed) im <<- inversed
        getinversed <- function() im
        list(set=set, get=get, setinversed=setinversed, getinversed=getinversed)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        im <- x$getinversed()
        # checking if there is inversed version of the matrix
        if (!is.null(im)){
                message("getting cache data")
                im
        }
        data <- x$get()
        #calculating inversed matrix
        im <- solve(data)
        #caching inversed matrix
        x$setinversed(im)
        im
}
