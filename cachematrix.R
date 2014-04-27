

#Here are two functions that are used to create a special "matrix" object that can cache its inverse.

#The first function name makeCacheMatrix creates a special "matrix" and that can cache its inverse.

#1. set the value of the matrix
#1. get the value of the matrix
#2. set the value of the inverse of the matrix
#3. cache the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
   
   m <- NULL
    
    set <- function(y)
    {
        x <<- y
        m <<- NULL
    }
   
    get <- function() x
    setsolve <- function(solve)
    m <<- solve
    getsolve <- function() m

    list(set = set, get = get,setsolve = setsolve,getsolve = getsolve)
}

#following function This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
#If the inverse has already been calculated (and the matrix has not changed), then cacheSolve
# retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
         m <- x$getsolve()

      if(!is.null(m)) 
        
        {
          
        message("getting cached data")
        
        return(m)
        
        }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}
