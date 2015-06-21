## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
lov1 = length(x)
		bob <<- matrix(x,nrow = sqrt(lov1), ncol = sqrt(lov1))

		set_matrix = function(z)
		{
			x <<- z
			lov2 = length(x)	
			bob <<- matrix(x,nrow = sqrt(lov2), ncol = sqrt(lov2))
			lee <<- NULL
		}
		get_matrix = function()
		{
			bob
		}
		set_inverse = function(y)
		{
			lov3 = length(y)
			lee <<- matrix(y, nrow = sqrt(lov3), ncol = sqrt(lov3))
		}	
		get_inverse = function()
		{
			lee
		}		
		list( set_matrix = set_matrix, get_matrix = get_matrix, set_inverse = set_inverse, get_inverse = get_inverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
if(!is.null(lee))
		{
			message("Getting cached Inverse")
		}
		else
		{	
			message("Creating new Inverse")
			lee <<- solve(bob)
		}
		lee
        ## Return a matrix that is the inverse of 'x'
}
