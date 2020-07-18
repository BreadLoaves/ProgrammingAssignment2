#both functions are used to make a square, invertible matrix, while
#making the inverse of the matrix part of a cache environment

#function to make cache matrix and returns a list of functions.
#used by cachesolve to get the inverted matrix in cache

makeCacheMatrix <- function(x = matrix()) {

  #initializing cache to null

  cache <- NULL

  #creating the matrix

  set_matrix <- function (y) {

    x <<- y
    cache <<- null
  }

  #get matrix value

  get_matrix <- function () x

  #invertting matrix and put it on cache

  inverse_matrix <- function (inverse) cache <<- invserse

  #get inverted matrix

  get_inverse <- function () cache

  #returning functions

  list(set_matrix = set_matrix, get_matrix = get_matrix(),
       inverse_matrix =  inverse_matrix,
       get_inverse = get_inverse)

}

#this function is used to calculate the inverse of the matrix

cacheSolve <- function(x, ...) {

  #getting the inverse of the matrix from cache

  cache <- x$getInverse()

  return (cache)
}





}
