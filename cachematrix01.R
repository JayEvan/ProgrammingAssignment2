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
  
  x
}


## Write a short comment describing this function
## This function computes the inverse of the matrix returned by make
## makeCacheMatrix if not in cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
