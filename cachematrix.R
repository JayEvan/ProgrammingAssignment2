## Programming Assignment 2
## Coursera, R Programming
## JayEvan
## 
## This function creates a special matrix object that
## stores a square matrix and functions used by cacheSolve
## to solve the matrix in the returned list
## default matrix is 5x5 populated by random normal numbers

makeCacheMatrix <- function(x = matrix(rnorm((25),mean=10,sd=2),nrow=5,ncol=5)) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setxinv <- function(xinv) m <<- xinv
  getxinv <- function() m
  list(set = set, get = get,
       setxinv = setxinv,
       getxinv = getxinv)
}

## This function computes utilizes the list created by 
## makeCacheMatrix to solve and return the matrix.  
## if the inverted matrix has been calculated and stored in cache
## the cached values is returned
cacheSolve <- function(x, ...) {
  m <- x$getxinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setxinv(m)
  m  
}
