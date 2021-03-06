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
Noticed that '4' got printed frist before an error was trigered. This is because b did not have to be evaluated until after print(a). Once the function tried to evaluate the print(b) it had to throw an error.  

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

## Function that make Power
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



## Loop Functions

**Looping on the Command Line**

Writing **for**, **while** loops is useful when programming but not particularly easy when working
interactively on the command line. There are some functions which implement looping to make life
easier.
- **lapply:** Loop over a list and evaluate a function on each element.
- **sapply:** Same as lapply but try to simplify the result.
- **apply:** Apply a function over the margins of an array. Apply is a function that operates over the margins of an array. So, this is very useful if you want to    take summaries of matrices or other or, higher dimensional arrays.
- **tapply:** tapply is short for Table apply. Apply a function over subsets of a vector.
- **mapply:** Multivariate version of lapply.
- **Split:** There's also another function called split which doesn't actually apply anything to objects. But it's often useful in conjunction with functions like    lapply or sapply because it splits objects into sub-pieces.


## Lapply Function:
lappy takes three arguments
  1. a List X.
  2. a function ( a name of function E.g FUN)
  3. other aguments via its dot dot dot (...) arugments
If X is not a list, it will be coerce to a list using **as.list**.
Lapply always return a list, regardless of the class of the input.

**Example:**
```
  x <- list( a = 1:5, b = rnorm(10) )
  
  #rnorm genrate 10 random numbers of normal distribution.
  # 1:5 will generate list of 5 elements from 1 to 5 and will store it in a.
  
  lapply( x , mean )
  #lapply will looped on each element of X and calculate its mean.
  
  [1] 3
  $b
  [1] 0.029
  
```
**Example:**
```
    x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
     lapply(x, mean)
    $a
    [1] 2.5
    $b
    [1] 0.06082667
    $c
    [1] 1.467083
    $d
    [1] 5.074749
```
**Example:**
In the below example **runif** generate uniform variables (0 to 1) of each element of X.If I say runif 1, it will generate a vector of single value, If I say runif 2, it's going to generate a vector of two random variables. So, here I'm applying l, the runif function to sequence 1, 2, 3, 4. So, what I'm going to get is a list where the first element is a single random number random uniform. The second element's going to be a vector of two random uniforms. The third element's going to be a vector of three.
```
    x <- 1:4 # generate list of numbers rangig from 1 to 4
    lapply(x, runif) 
    
    [[1]]
    [1] 0.2675082
    1[2]]
    [1] 0.2186453 0.5167968
    [[31]
    [1] 0.2689506 0.1811683 0.5185761
    [[4]]
    [1] 0.5627829 0.1291569 0.2563676 0.7179353
```


**Example:**

In this example **runif** generate uniform variables (0 to 10) of each element of X.  by using **min** and **max** arguments. Min define the lower limit and max define the max limit of unifrom distribuition. You can see in the output given below in example.
```
    X <- 1:4
    lapply(x, runif, min = 0, max = 10)
    
    [[1]]
    [1] 3.302142
    [[2]]
    [1] 6.848960 7.195282
    [[31]
    [1] 3.5031416 0.8465707 9.7421014
    [[4]]
    [1] 1.195114 3.594027 2.930794 2.766946

```


## Apply Function
  Apply is used to a evaluate a function (often an anonymous one) over the margins of an array.
    - It is most often used to apply a function to the rows or columns of a matrix
    - It can be used with general arrays, e.g. taking the average of an array of matrices
    - It is not really faster than writing a foor loop, but it works in one line. This means that you use         the function **apply** involve less typing and **less typing is always better, because good                 programmers are always lazy.**

  apply
  str(apply)
  function (X, MARGIN, FUN, ...)
  1. x is an array
  2. MARGIN Is an integer vector indicating which margins should be "retained".
  3. FUN is a function to be applied 
  4. dot dot dot ( ... ) is for other arguments to be passed to FUN

  **Example:**
  
  In below example we created matrix of 20 rows and 10 columns. and than we took mean by using **Apply loop   function**. The function returns vector of length 10, which each element return mean of each column of     the matrix.
  ```
    X <- matrix(rnorm(200), 20, 10)
    > apply(x, 2, mean)
    [1] 0.04868268 0.35743615 -0.09104379
    [4] -0.05381370 -0.16552070 -0.18192493
    [7] 0.10285727 0.36519270 0.14898850
    [10] 0.26767260
    
    > apply(x, 1, sum)
    
    [1] -1.94843314 2.60601195 1.51772391
    [4] -2.80386816 3.73728682 -1.69371360
    [7] 0.02359932 3.91874808 -2.39902859
    [10] 0.48685925 -1.77576824 -3.34016277
    [13] 4.04101009 0.46515429 1.83687755
    [16] 4.36744690 2.21993789 2.60983764
    [19] -1.48607630 3.58709251
  ```
  
   ### col / row sums and means
   
   For sums and means of matrix dimensions, we have some shortcuts.
   - rowSums = apply(x, 1, sum)
   - rowMeans = apply(x, 1, mean)
   - col Sums = apply(x, 2, sum)
   - colmeans = apply(x, 2, mean)
     The shortcut functions are much faster, but you won't notice unless you're using a large matrix.
     
   **Example of shortcut and apply function.**
   In below example we are taking average by using both apply function and shortcut function.
   
   ```
    > a <- array(rnorm( 2 * 2 * 10), C(2, 2, 10))
> apply(a, c??l, 2), mean)
      [,1]       [,2]
[1,] -0.2353245 -0.03980211
[2,] -0.3339748 0.04364908
> roweans(a, dims = 2)
       [,1]       [,2]
[1,] -0.2353245 -0.03980211
[2,1] -0.3339748 0.04364908
   ```
   
