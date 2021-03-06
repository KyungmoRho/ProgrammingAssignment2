## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
  m <- NULL
  set <- function(b) {
    a <<- b 
    m <<- NULL 
  }
  get <- function() a 
  setinverse <- function(inverse) m <<- inverse 
  getinverse <- function() m 
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {
  m <- a$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- a$get()
  m <- solve(data, ...)
  a$setinverse(m)
  m
}

