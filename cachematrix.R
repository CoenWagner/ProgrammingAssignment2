
## Assignment 2 code for inversion of a matrix  and caching it.



## Creating a matrix object that can cache its inverse.


makeCacheMatrix <- function( m = matrix() ) {
	i <- NULL
	set <- function( matrix ) {
		m <<- matrix
		i <<- NULL
	}
	
	get <- function() {
		m
	}

## Compute the inverse of the special matrix returned by "makeCacheMatrix"

setInverse <- function(inverse) {
	i <<- inverse
	}

	getInverse <- function() {
		i
	}

	list(set = set, get = get,
	setInverse = setInverse,
	getInverse = getInverse)
	}

	cacheSolve <- function(x, ...) {
		m <- x$getInverse()

		if( !is.null(m) ) {
			message("aqcuiring cached data")
			return(m)
		}

	data <- x$get()

	m <- solve(data) %*% data

	x$setInverse(m)

	m
	}
