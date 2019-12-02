## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
  ### When inputting a matrix, it creates a list with a function to set the 
  ### value of the matrix, get the value of the matrix, set the value of the 
  ### inverse, and then get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  # set the value of the matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  # get the value of the matrix
  get <- function() x
  
  # set the value of hte inverse
  setinverse <- function(sol) m <<- sol
  
  # get the value of the inverse
  getinverse <- function() m
  
  # output the list
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
  ### Calculates the inverse of the cache matrix from list outputted from the 
  ### function above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  # check to see if the inverse is already there
  m <- x$getinverse()
  
  # if the inverse is there, then return it
  if(!is.null(m)) {
    message("getting chaced data")
    return(m)
  }
  
  # otherwise, solve the matrix and produce the inverse
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}
