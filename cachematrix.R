## Calculation of inverse matrix with a help of the cashing
## to avoid unneccessary time and resource consumption.

## Function creates a list of functions to perform
## matrix inversion: 
## 1. set - sets the value of the matrix
## 2. get - gets the value of the matrix
## 3. setInverse - sets the inverse of the matrix
## 4. getInverse - gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  set <-function(y) {
  	x <<- y
  	inv_matrix <<- NULL
  }
  get <-function() {
  	x
  }
  setInverse <- function(inverse) inv_matrix <<- inverse
  getInverse <- function() inv_matrix
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function returns the inverse of the matrix.
## If inversion has been computed gets the result 
## from the cashe, in another case it makes a calculation.

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if (is.null(inv)) {
  	my_matrix <- x$get()
  	inv <- solve(data)
  	x$setInverse(inv)
  }
  ## Return a matrix that is the inverse of 'x'
  inv     
}