This repo contain notes of R programming course of Data science Speciliazation offered by John Hopkins University on Courera. 
## Welcome to R-Programming

R is a programming language and software environment for statistical analysis, graphics representation and reporting suppoerted by R foundation. R was created by by Ross Ihaka and Robert Gentleman at the University of Auckland, New Zealand. It is available freely under GNU General Public License. R is widely used among statisticians and data miners for developing statistical softwares and data analysis.

R is interpreted language. It can be access to command-line interpreter. If a user types `5+3` at the R command prompt and presses enter, the computer replies with **8**, as shown below:

```
  > 5 + 3
  [1] 8
```

## Installing R
Your can donwload R from the link given below. choose R distribuition accordingly to your Operating System.

https://cran.rstudio.com/


## Installing RStudio 
R is the core or underline statistical language having no GUI (Graphical user interface) where users easily interact with R. Rstudio is an IDE (Integrated Development Environment) for R. You an download RStudio from the link given below.

[RStudio](https://www.rstudio.com/). 








## Functions
Function are created using the *function ()* directive and can be stored as R object just like anything else. In particularly, they are R objects of class "function".
 **Example:**
```
  f <- function(<arguments>) {
            ## Do something interesting 
      }
```
Functions in R are "first class objects", which mean that they can be traeted pretty much like any other R objects. importantly
  - Function can be passed as an argument to other function.
  - Function can be nested,so that they can defined on function into another function. The return value of function is the last expression in the function body to      be evaluated.
  
  ## Arguments to a Function
  we can pass arguments to the function. we can assign or specify values to an arguments or we can leave it with out setting any values.
  In order to not specify any values we can assign **NULL** to the argurments saying that this arguments means theres nothing. 
  
   **Example:**
  ```
  f <- function(a, b = 4, c = "d", e = NULL ) {
            ## Do something interesting 
      }
```

  ## Lazy Evaluations
  Arguments to the functions are evaluated lazily, so they are evaluated only as needed.
  
   **Example: 1**
   ```
  f <- function(a, b ) {
            a^2
      }
      
      f(4)
      Result: 
      [1] 16
```
This function actully never uses the argument b, so calling f(4) wouldnot give any error becuase the 4 gets positionaly matched to a. 
  
**Example: 2**
 ```
  f <- function(a, b) {
           print(a)
            print(b)

}
      
      f(4)
      Result: 
      [1] 4
      
      ## Erro: argument "b" is missing, no default value. 
```
Noticed that '5' got printed frist before an error was trigered. This is because b did not have to be evaluated until after print(a). Once the function tried to evaluate the print(b) it had to throw an error.  

** Examples of Function :**

## Function that Add two numbers
```
add2 <- function(x,y){
  x + y
}
```
## Function that gives values or vector above the number N.
  ```
 above <- function(x,n){
  use <- x > n
  x[use]
}
```
we can set a default value for N.Let set N, if N is not given by user it will set as 10 example below
```
 above <- function(x,n = 10){
  use <- x > n
  x[use]
}
```

# Function that make Power
```
make.power <- function(n) {
  pow <- function(x){
    x^n
  }
  pow
}

cube <- make.power(3)
square <- make.power(2)

> cube(3)
[1] 27
> square(3)
[1] 9

```
