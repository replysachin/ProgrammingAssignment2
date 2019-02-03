## Put comments here that give an overall description of what your
## functions do

## Create a matrix that cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        
        a<-NULL
        set<-function(matrix) {
                mat<-matrix
                a<-NULL
        }
        
        get<-function() {
                m
        }
        
        setInverse<-function(inverse){
                a<<-inverse
        }
        
        getInverse<-function() {
                a
        }
        
        list(set=set, get=get, setInverse = setInverse, getInverse=getInverse)
        
}


## Calculate the Inverse of matrix

cacheSolve <- function(x, ...) {
        
        m <- x$getInverse()
        
        
        if( !is.null(m) ) {
                
                return(m)
        }
        
        
        data <- x$get()
        
        
        m <- solve(data) %*% data
        
        
        x$setInverse(m)
        
        
        m
}
