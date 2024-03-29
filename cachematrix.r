
R version 3.6.0 (2019-04-26) -- "Planting of a Tree"
Copyright (C) 2019 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

>     
> ## cacheSolve is a function which computes the inverse of the special "matrix" 
> makeCacheMatrix <- function(x = matrix()) {
+ 
+   inv <- NULL
+   set <- function(y) {
+     x <<- y
+     inv <<- NULL
+   }
+   get <- function() x
+   setinv <- function(inverse) inv <<- inverse
+   getinv <- function() inv
+   list(set = set, get = get, setinv = setinv, getinv = getinv)
+ }
> 
> ## retrive the inverse matrix  
>  
>   cacheSolve <- function(x, ...) { 
+    ## Return a matrix that is the inverse of 'x' 
+    inv <- x$getinverse() 
+    if(!is.null(inv)) { 
+         message("getting cached data") 
+           return(inv) 
+      } 
+      data <- x$get() 
+     inv <- solve(data, ...) 
+       x$setinverse(inv) 
+       inv 
+  } 
