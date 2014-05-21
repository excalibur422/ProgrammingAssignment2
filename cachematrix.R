## This functino creates a special "matrix" object that can cache its inverse.
##I changed the function input from a numeric to an undefined matrix
## Right or Wrong, I just replaced the function mean with the function inverse

makeCacheMatrix <- function(x = matrix()) {
  m  <- NULL
  set  <- function(y){
    x <<- y
    m <<- NULL 
  }
  get  <- function() x
  setInverse  <- function(inverse) m  <<- inverse
  getInverse  <- function() m
  list(set= set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}



## Computes the inverse. If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache
## Right or Wrong, I just replaced the function mean with the function inverse

cacheSolve <- function(x, ...) {
  m  <- x$getInverse()
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data  <- x$get()
  m  <- solve(data, ...)
  x$setInverse(i)
  m
}

