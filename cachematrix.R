## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # set cached value, NULL because nothing is cached at the beginning
  cache_object <- NULL
  
  # created matrix with the function. 
  set_martix <- function(y){
    x <<- y 
    cache_object <<- NULL
}
# the brand new created matrix
get_matrix <- function(){
  x
}
# loading and calculation on the new object
cache_inv <- function(calculation){
  cache_object <<- calculation
}
# get the calculated value
get_inv <- function(){
  cache_object
}
# list of function
list(set_matrix = set_matrix, get_matrix= get_matrix,
     cache_inv= cache_inv, get_inv = get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  # get the cached value
  cache_object <- x$get_inv()
  # if the value exists it is given back 
  if(!is.null(cache_object)){
    message("getting cached data")
    return(cache_object)
  }
  # Otherwise, it calculates the matrix
  # and sets the value in the cache 
  # via the setmean function.
  data <- x$get_matrix()
  cache_object <- inv_matrix(data,...)
  x$cache_inv(cache_object)
  
  # returning the inversed matrix value
  cache_object
  
}
