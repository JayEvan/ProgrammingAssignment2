## Programming Assignment 2
## Coursera, R Programming
## JayEvan
## 

## Write a short comment describing this function
## This function creates a special matrix object that
## can cache its inverse
## a square matrix
## default for pass is 5x5

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

## Write a short comment describing this function
## This function computes the inverse of the matrix returned by make
## makeCacheMatrix if not in cache
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
