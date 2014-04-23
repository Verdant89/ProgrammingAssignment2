## Put comments here that give an overall description of what your
## functions do
#The first function will create an invertible matrix that is made of uniformly distributed numbers
#between 0 and 1. Then, the second function will either calculate the inverted matrix or retrieve that
#inverted matrix from the cache

## Write a short comment describing this function
#This function creates an invertible matrix with dim rows and columns
#It also creates a NULL object for the solved inverted matrix

makeCacheMatrix <- function (dim){   #dim = number of dimensions (rows and columns)
                                     #of the matrix
      
      a <- runif(dim*dim)            #creates a numeric vector of the exact size 
                                     #required for the matrix
      
      x <<- matrix(a, dim, dim)      #caches the invertible matrix
      inverse <<- NULL               #caches NULL object for the inverted matrix
      
}

makeCacheMatrix(4)



## Write a short comment describing this function
#This function returns the cached inverted matrix if it has already been solved
#Otherwise, it computes the inverted matrix

cacheSolve <- function(x, ...) {
       cacheSolve <- function(x){
      
      if(!is.null(inverse)) {       #retrieves inverted matrix if it already exists
            
            message("retrieving cached data")
            return(inverse)
      
      }
      
      else {       #else it computes and returns a matrix that is the inverse of m
                                                        
            message("computing matrix inverse")
            inverse <<- solve(x)
            inverse
      }
      
}

cacheSolve(x)

