## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
  ### When inputting a matrix, it creates a list with a function to set the 
  ### value of the matrix, get the value of the matrix, set the value of the 
  ### inverse, and then get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(sol) m <<- sol
  getinverse <- function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
  ### Calculates the inverse of the cache matrix from list outputted from the 
  ### function above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting chaced data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}
