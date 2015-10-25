## The first function makes a list to set and get a matrix and its inverse in an intrinsic environment variable
## The second function calculates the function and set its inverse.  If the inverse is already set, the cached value is used

## makeCacheMatrix creates a matrix x, and exposes three methods to set/get x and its inverse

makeCacheMatrix <- function(x = matrix()) {
cachedInv <- NULL ## initialises inverse
  
  ## set x in parent env with the desired value, if inverse is already set, ignors
  set <- function(userValue = matrix()) {
    x <<- userValue 
    cachedInv <<- NULL

}


## This function sets inverse variable in parent env to desired value and return the value as a convenience

setInverse <- function(invVal) {
    cachedInv <<- invVal 
    return(cachedInv)
  }
  
  getInverse  <- function() cachedInv
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}

