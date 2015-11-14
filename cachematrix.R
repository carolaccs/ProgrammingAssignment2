#
# This is my solution to the second programmigs assigment Coursera's Programming
# in R course.
#
# The first function makeCacheMatrix creates a special matrix, that can cache its inverse.
# The second function cacheSolve calculates a matrix (created with makeCacheMatrix) inverse 
# only if this inverse have not been previouly calculated. 
#
# Ivette C. Martinez
#

#
# makeCacheMatrix creates a special "matrix" object that can cache its inverse.
#
# This special "matrix" is a list that contains functions to:
# 1. Set the values of the matrix "x"
# 2. Get the values of the matrix "x"
# 3. Set the values of the inverse matrix of "x"
# 4. Get the values of the inverse matrix of "x"
#

makeCacheMatrix <- function(x = matrix()) {
  mInv <- NULL
  set <- function(y) {
    x <<- y
    mInv <<- NULL
  }
  get <- function () x
  setInv <- function(solve) mInv <<- solve
  getInv <- function() mInv
  list(set = set, get = get,
       setInv = setInv, getInv = getInv)
}


# cacheSolve calculate the inverse of a special "matrix" built using
# makeCacheMatrix. It first check is the inverse has been calculated, 
# in this case cached inverse value is returned  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mInv <- x$getInv()
        if(!is.null(mInv)){  ## The inverse have been prevously calculated
        	message("getting cached inverse")
        	return(mInv)
        }
        ## Calculating the inverse of x
        data <- x$get()
        mInv <-solve(data, ...)
        x$setInv(mInv)
        mInv 
}

#
# An example of usage:
# > A <- matrix(c(1,2,2,1), nrow=2, byrow=TRUE)
# > print(A)
# > source("cachematrix.R")
# > M <- makeCacheMatrix(A)
# > I <- cacheSolve(M)
# > J <- cacheSolve(M)
# getting cached inverse
# 
