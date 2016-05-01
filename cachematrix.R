## Put comments here that give an overall description of what your
## functions do

##These functions do exactly what they have to do as decribed in the assignment :)

## Write a short comment describing this function
##this functions creates an object that can cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- inverse
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
##this function checks if the inverse exists, if so it returns the inverse, otherwise it calculates the inverse and then returns that

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
  
  
}
