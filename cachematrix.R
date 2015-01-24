##The assignment is regarding lexical scoping and caching functions that may require a long computation time. 



## The first function, makeCacheMatrix creates a Matrix, which is really a list containing a function to
##set the value of the matrix
##get the value of the matrix

##

## The following function takes an i/p as a matrix and sets it

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


##the function cacheSolve produces the inverse of the matrix given as an input

cacheSolve <- function(x=matrix(), ...) {
        
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
