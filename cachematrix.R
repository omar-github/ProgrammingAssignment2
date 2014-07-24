## My function takes in a vector of data (this data used to fill the matrix) then it builds a square matrix and calculate its inverse
## and cache it. the function has also another function to return the created matrix to cacheSolve

## Write a short comment describing this function

## This function creates a matrix and stores its cache.

makeCacheMatrix <- function(x) ## in order to create a square matrix, a vector contains the data will be provided
{

## Below we create a matrix from vector X which has the matrix values
  
created_matrix <- matrix(x,sqrt(length(x)))

## Below we solve for the inverse of the created matrix and cache it.

inv_matrix <<- solve(created_matrix)

##Below is a function which returns the created matrix to be used in cacheSolve()

return_matrix <<- function() created_matrix

         
}


## This function take in a new matrix and before doing anything, it compare the matrix to the one created in makeCacheMatrix. 
## if the two matrices are identical, then it uses the cached inverse to avoid calculations, otherwise, it shows a message
## to the user telling him that the inverse should be calculated.

cacheSolve <- function(y = numeric())
  
{  

  ## Return the created matrix from makeCacheMatrix
  
  returned_matrix <- return_matrix()
  
  ## Now, compare the retuned matrix with the one provided in cacheSolve using
  ## identical function which will return TRUE or FALSE
  
  compare <- identical(y,returned_matrix)
  
  ## Check 2 conditions before getting the inverse
  ## 1. Matrices are identical
  ## 2. The inverse is cached
  
  if ( compare == TRUE & !is.null(inv_matrix))
  {
    ## if both conditions are true, then the inverse is cached no need to re-calculate
    
    return(inv_matrix)
  } 
  else
  {
    message("Matrices do not match, inverse of y has to be calculated")
  }
  
  
  
  
  
  
  
}

