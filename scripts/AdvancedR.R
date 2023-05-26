library(lobstr)
# syntatic names are required in R
?Reserved # reserved names in R


set.seed(1014)

df <- data.frame(runif(3), runif(3))
names(df) <- c(1, 2)
df$`3` <- df$`1` + df$`2`
df


# Names and values --------------------------------------------------------

x <- c(1, 2, 3) # object - vector of values
x

y <- x


x <- c(1, 2, 3, 4)

lobstr::obj_addr(c("a", "b", "c", "d"))
lobstr::obj_addr(y)

a <- 1:10
b <- a
c <- b
d <- 1:10
object <- list(a, b, c, d)

mean
base::mean
get("mean")
evalq(mean)
match.fun("mean")

mean_functions <- list(
  mean,
  base::mean,
  get("mean"),
  evalq(mean),
  match.fun("mean")
)

unique(obj_addrs(mean_functions))

?read.csv
?make.names()

# copy on modify is used in R - R creates a new object whenever you modify one - R objects are immutable
x <- c(1, 2, 3)
tracemem(x)
y <- x
y[[3]] <- 4
y[[3]] <- 5L
untracemem(x)

x <- c(1, 2, 3)
tracemem(x)
z <- f(x)
obj_addrs(list(x, f(x), z))

l1 <- list(1, 2, 3)
l2 <- l1
l2[[3]] <- 4 # shallow copy

ref(l1, l2) # the list still points to the adress of the object that has not changed

# in data frames if a column is changed only one column is copied if you change rows all columns must be copied
# this makes the operation more memory intensive thus the tidy format (long)

x <- c("a", "a", "abc", "d")
ref(x, character = TRUE)

x <- 1L
xx <- 1

class(1L)
class(1)




a <- 1:10
tracemem(a)
b <- list(a, a)
c <- list(b, a, 1:10)

ref(a, b, c)

x <- list(1:10)
ref(x)
tracemem(x)
x[[2]] <- x
ref(x)

# Object size 

obj_size(b)
x <- 1:10
y <- 1:1e3

obj_sizes(list(x, y))

obj_size(x)
obj_size(y)


# Vectors -----------------------------------------------------------------
x <- c(1,2,3,NA)
typeof(x) 
class(x) 

x <- c(TRUE, FALSE, TRUE, "a", 1)
mean(x)
as.integer(x)


is.na(x)
typeof(c("a", 1))
c(TRUE, 1L)

typeof(c("a", 1))
typeof(c(1L,FALSE))
typeof(c(1,FALSE))

# ------ ATTRIBUTES
a <- 1:3
typeof(a)
attr(a, "x") <- "abcdef"
attr(a, "x")
#> [1] "abcdef"
typeof(a)

attr(a, "y") <- 4:6
str(attributes(a))
#> List of 2
#>  $ x: chr "abcdef"
#>  $ y: int [1:3] 4 5 6

# Or equivalently
a <- structure(
  1:3, 
  x = "abcdef",
  y = 4:6
)
str(attributes(a))
#> List of 2
#>  $ x: chr "abcdef"
#>  $ y: int [1:3] 4 5 6

# ------ NAMES

# When creating it: 
x <- c(a = 1, b = 2, c = 3)

typeof(x)

# By assigning a character vector to names()
x <- 1:3
names(x) <- c("a", "b", "c")

# Inline, with setNames():
x <- setNames(1:3, c("a", "b", "c"))

# ------ DIMENSIONS

x <- matrix(1:6, nrow = 2, ncol = 3)
typeof(x)
str(x)

# attributes 
#retrieved en masse with 
attributes()
#and set en masse with 
structure()

#functions for vectors and matrices
names()
rownames()
colnames()

length()
nrow()
ncol()

c()	
rbind()
cbind()

t()
is.null(dim(x))
is.matrix()	

typeof(x)
str(x)

#factor

x <- factor(c("a","b","c"))
x
n <- c("one", "two", "three")

names(x) <- n

x
levels(x) <- c("c", "b","a")
x
# or 
levels(x) <- rev(levels(x))
x


# reverse elements order
x
rev(factor(x))
# reverse factor level
x
levels(x) <- rev(levels(x))
x


?factor()
str(Sys.Date())
typeof(Sys.Date())
class(Sys.Date())

attributes(Sys.Date())

#“POSIX” is short for Portable Operating System Interface - “ct” stands for calendar time

now_ct <- as.POSIXct("2023-05-24 10:20", tz = "UTC")
now_ct

typeof(now_ct)
class(now_ct)
attributes(now_ct)
structure(now_ct, tzone  = "Europe/Paris")


Sys.timezone()


one_week_2 <- as.difftime(7, units = "days")
one_week_2
typeof(one_week_2)
attributes(one_week_2)

x <- table(mtcars[c("vs", "cyl", "am")])
View(x)
View(mtcars)
typeof(x)
class(x)
attributes(x)
View(mtcars)


?rev()

