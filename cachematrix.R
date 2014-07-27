## Functions use to cache the inverse of a matrix. And return the
## cache value if one exist otheriwe calulcate the inverse and 
## put the calculated value in cache. 


#makeCacheMatrix create a list containing four functions
#set : set the input matrix to x
#get : return the set matrix
#setinverse : set the internal internal variable i to input  
#getinverse :  return the internal inverse variable

makeCacheMatrix <- function(x = matrix()) {
#set inverse variable to i		
i <- NULL 
set <- function(y){
	x <<- y
	i <<- NULL
}

get <- function() x

setinverse <- function(inverse) i <<- inverse

getinverse <- fucntion() i 

list(set = set, get = get,
	setinverse = setinverse,
	getinverse = getinverse)
}


# cacheSolve return the inverse of matrix. it retrun the cache 
# value if one exist otherwise calculate the inverse set the value in cache and return the value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
	if(!is.null(i)){
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinverse(i)
	i
}
