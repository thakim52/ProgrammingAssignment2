## A pair of functions that cache the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse.

## This function creates a special matrix function that can compile its inverse by initializing the variables first.

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
  setup <- function(z){
    x <<- z
    inverse <<- NULL
}
get <- function() x
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

## Thsi function returns an inverse of x by extracting previous matrix and inverting it using ! operator with solve().

cacheSolve <- function(x, ...) {
        inverse <- x$getInverse()
        if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  mydata <- x$get()
  inverse <- solve(mydata)
  x$setInverse(inverse)
  inverse      
}
