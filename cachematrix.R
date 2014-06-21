## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cache_object <- NULL
  # 
  set_martix <- function(y){
    x <<- y 
    cache_object <<- NULL
}
get_matrix <- function(){
  x
}
cache_inv <- function(inv_matrix){
  cache_object <<- inv_matrix
}
get_inv <- function(){
  cache_object
}
list(set_matrix = set_matrix,get_matrix= get_matrix,
     cache_inv= cache_inv, get_inv = get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  cache_object <- x$get_inv()
  if(!is.null(cache_object)){
    message("getting cached data")
    return(cache_object)
  }
  data <- x$get_matrix()
  cache_object <- inv_matrix(data,...)
  x$cache_inv(cache_object)
  cache_object
  
}
