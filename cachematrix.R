## A pair of functions that cache the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse.

## This function creates a special matrix function that can compile its inverse.

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
}
get <- function() x
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

## Returns inverse of x.

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
