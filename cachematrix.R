## Put comments here that give an overall description of what your
## functions do

# This is my solution to the second programmigs assigment Coursera's Programming
# in R course.
#
# makeCacheMatrix reates a special "matrix" object that can cache its inverse.
# This special "matrix" is a list that contains functions to:
# 1. Set the values of the matrix "m"
# 2. Get the values of the matrix "m"
# 3. Set the values of the matrix
# 4. Get the values of the matrix
# Ivette C. Martinez

# makeCacheMatrix creates a special "matrix" object
#    that can cache its inverse.
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
