## Put comments here that give an overall description of what your
## functions do

##makeCacheMatrix creates a matrix that can cache its inverse. 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL    ##the inver variable is declared null
  set <- function(y){   ## function set is defined
    x <<- y
    inver <<- NULL
  }
  
  get <- function() {x}   ## function get returns the value of the matrix
  setinver <- function(invercalc) {inver <<- invercalc}
  getinver <- function() {inver} ##function to obtain inverse of the matrix
  list(set = set, get = get, 
       setinver = setinver, 
       getinver = getinver)
  
}


## Write a short comment describing this function
##This function is used to get the cache data

cacheSolve <- function(x, ...) {   ##gets cache data
  inver <- x$getinver()  
  if(!is.null(inver)) { ## evaluate if the function has any value
    message("getting cached data")
    return(inver) ##return inverse value
  }
  
  data <- x$get()
  inver <- solve(data, ...) ##calculate inverse value
  x$ setinver(inver)
  inver  ##return a matrix that is the inverse of "x"
  
}
