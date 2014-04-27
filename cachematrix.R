<<<<<<< HEAD
# These functions cache the inverse data of a matrix if it has
# not already been calculated yet. If the inverse matrix has already
# been computed, it return the cached value

makeCacheMatrix <- function(x = matrix())
{
        m <- NULL # initialize the local inverse value of the matrix
        
        # set the value of the matrix based on the argument
        set <- function(y)
        {
                x <<- y
                m <<- NULL # inverse is still NULL
        }
        get <- function() x # get the value of the matrix
        setsolve <- function(solve) m <<- solve # set the inverse of the matrix
        getsolve <- function() m # get the inverse of the matrix
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...)
{
        m <- x$getsolve()
        #check if the inverse matrix is cached
        if(!is.null(m))
        {
                message("getting cached data")
                return(m)
        }
        #if not cached, we calculate the inverse matrix and cache it
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
