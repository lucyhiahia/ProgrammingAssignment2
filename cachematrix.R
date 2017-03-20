## Caching the inverse of a matrix

## Create a list containing 4 functions

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) i <<- solve
        getmatrix <- function() i
        list(set=set, get=get, setmatrix=setmatrix,
             getmatrix=getmatrix)
}


## Calculate the inverse and create a cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getmatrix()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setmatrix(i)
        i
}
