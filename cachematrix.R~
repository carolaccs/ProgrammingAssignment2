#
# This is my solution to the second programmigs assigment Coursera's Programming
# in R course.
# Ivette C. Martinez
#


# makeCacheMatrix creates a special "matrix" object that can cache its inverse.
#
# This special "matrix" is a list that contains functions to:
# 1. Set the values of the matrix "m"
# 2. Get the values of the matrix "m"
# 3. Set the values of the matrix
# 4. Get the values of the matrix
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
        if(!is.null(mInv)){
        	message("getting cached inverse")
        	return(mInv)
        }
        data <- x$get()
        mInv <-solve(data, ...)
        x$setInv(mInv)
        mInv 
}
