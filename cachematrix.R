## Put comments here that give an overall description of what your
## functions do

## Create a matrix that cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        
        ## initialize inverse propert
        a<-NULL
        
        ## set matrix method
        set<-function(matrix) {
                x<-matrix
                a<-NULL
        }
        
        ## get matrix method
        get<-function() {
                x
        }
        ## set inverse of the matrix method
        setInverse<-function(inverse){
                a<<-inverse
        }
        ## get inverse of the matrix method
        getInverse<-function() {
                a
        }
        ## return the list of methods
        list(set=set, get=get, setInverse = setInverse, getInverse=getInverse)
        
}


## Calculate the Inverse of matrix
## Calculate inverse of special matrix  returned by makeCacheMatrix. If inverse already calculated, cachesolve should retrieve inverse from cache

cacheSolve <- function(y, ...) {
        
        ## Return matrix inverse of x
        m <- y$getInverse()
        
        ## Return inverse if already set
        if( !is.null(m) ) {
                
                return(m)
        }
        
        ## Get matrix
        data <- y$get()
        
        ## calculate inverse
        m <- solve(data) %*% data
        
        
        y$setInverse(m)
        
        ## Return matrix
        m
}
