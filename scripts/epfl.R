install.packages(c(
  "tidyverse",
  "rmarkdown",
  "janitor",
  "openxlsx",
  "datapasta",
  "dbplyr",
  "DBI",
  "odbc", 
  "RSQLite",
  "ggmap",
  "shiny",
  "devtools",
  "fs",
  "here",
  "leaflet",
  "infer"
))

packages <- c(
  "tidyverse",
  "rmarkdown",
  "janitor",
  "openxlsx",
  "datapasta",
  "dbplyr",
  "DBI",
  "odbc", 
  "RSQLite",
  "ggmap",
  "shiny",
  "devtools",
  "fs",
  "here",
  "leaflet",
  "infer"
)

lapply(packages, library, character.only = TRUE)


sessionInfo()

character <- "character"
typeof(character)


year <- 2018
Sys.time()
nchar(character)

?nchar

nchar(character) - 1 
round(2.9876945, digits = 4)
?round

substring(text="my text", first=2)
toupper(substring(text = character, first = 3))
?substring

toupper(substring("50 things you should know about data",
                  first=5, last=10))


lubridate::now(tzone = "EST")
?now()
#tabbing package
lubridate:: #press tab to go through available functions 
  
# Fisrt steps with R ---------------------------------------------------------
library(stringr)

first_name <- "Piotr"
last_name <- "Kaczmarski"
str_glue("Hello my name is {first_name} {last_name}") 
?str_glue
library(stringr)

rm(str_glue)
mtcars %>% str_glue_data("{rownames(.)} has {hp} hp")

str_detect("BC Building (EPFL)", "EPFL") #detect a pattern 

string_lenght <- "Also did we mention that strings can have any number of 
characters? Like zero? Zero is indeed an option and, although 
this might sound confusing now, just know that you can store 
empty strings."

str_length(string_lenght)

x <- "some_text_from_the_web_that_needs_some_cleaning"
str_replace_all(x,"_", " ")

x <- "The stringr package provides an easy to use toolkit for working 
with strings, i.e. character data, in R. This cheat sheet guides 
you through stringr’s functions for manipulating strings. The 
back page provides a concise reference to regular expressions, a 
mini-language for describing, finding, and matching patterns in 
strings."
str_count(act4sc1, "Lord")

my_r_animals <- c("dog", "cat", "canary")
my_r_animals

x <- c("1", 12, 23, TRUE, FALSE)
length(x)
class(x)
typeof(x)


my_numbers <- c(1, 3, 4, 4, 5, 4, 8, 3, 4) 
my_animals <- c("dog", "cat", "canary", "dog")
my_logicals <- c(TRUE, FALSE, FALSE, FALSE, TRUE)

tabyl(my_numbers)
tabyl(my_animals)

vector1 <- c(1,4,6)
vector2 <- c(2,7,9)
vectr3 <- c(vector1, vector2)
vectr3

vec1 <- c(1)
vec2 <- c(2,9)
vec3 <- c(43,52,1)
vec4 <- c(32,9,0,-1)

vec4 <- c(vec3, vec4, vec1, vec2)

typeof(vec4)

vec1 <- c("bread", "cake", "bread", "fruit", "lemon", "juice", 
          "fruit", "cake", "lemon", "nail", "pen", "key", "pen")

unique(vec1)
vec2 <- sort(unique(vec1))
vec2

sort(vec4)
sort(vec1)

rev(vec1)

vector1 <- c(1, 2, 3)
vector2 <- c(1, 2, 3)
vector3 <- c(1, 34521, 3)

identical(vector1, vector2)
?identical

x1 <- c(TRUE, TRUE, TRUE, FALSE, FALSE, 
  TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, 
  FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, 
  TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, 
  TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, 
  FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, 
  FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, 
  TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, 
  FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, 
  TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, 
  TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, 
  FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, 
  FALSE, TRUE, FALSE, FALSE, TRUE)

count(x1)
sum(x1, TRUE)
sum(x1, FALSE)

?sum

exam_grades <- c(32,45,10,49,90,96,83,29,87)
mean(exam_grades)

my_numbers <- c(32,14,52,34,59,98,78,90)
head(my_numbers, 3)
tail(my_numbers)

my_birds <- c("swallow","parrot","owl","pigeons","goose")
tail(my_birds, 2)

my_birds[2]

my_birds_rev <- rev(my_birds)
my_birds_rev[c(2,3)]

my_birds[-2]
my_animals[2:2] #reverses the order 
my_animals[4:2]

my_numbers
my_numbers <- c(34, 21, 5, 21, 98, 9, 0)
my_numbers[6:3]
 
# Sometimes, you want to get all the items in a vector that satisfy a specific condition. This is known as subsetting.
my_vec <- c(1,2,3)
my_index <- c(FALSE,TRUE,FALSE)
my_vec[my_index] # Should just return 2

higher_than <- my_numbers > 5
my_numbers[higher_than]

my_vec <- c(2,4,5,34,29,1,0,8,78)
bigger_than_25 <- my_vec > 25

# R doesn't complain if the logical index vector you provide does not have the same number of items as the vector to subset.
my_vec[bigger_than_25]
sum(my_vec[my_vec > 25]) 

3rd to last one

?tail

vect <- c(3235,23,12,56,42,68,32)
length(vect)
tail(vect, length(vect)-2)

vect[3:length(vect)]


a_vector <- c("Hello,","I am a", "teapot!")
str_c(a_vector, collapse = " ")
str_c(a_vector, collapse = "-")
str_c(a_vector, collapse = "_-_")

fst_names <- c("Harry", "Hermione", "Ronald", "Sirius")
mid_names <- c("James", "Jean", "Bilius", "Orion")
lst_names <- c("Potter", "Granger", "Weasley", "Black")
str_glue("{fst_names} {mid_names} {lst_names}")

#only the first two letters of the middle name followed by a dot (.)
str_glue("{fst_names} {str_sub(mid_names,1,2)} . {lst_names}") 
?str_glue

#lubridate
year <- ymd("2018-01-04")
date <- mdy("120987")

Sys.getlocale()

parse_date_time("3 Mar 2018", orders="dby")


dates1 <- c("1996-06-18","2008-12-21","2009-11-24","2015-01-28",
            "1978-06-04","1998-03-13","1977-11-05","1970-02-04",
            "1973-11-15","2013-02-17")

dates2 <- c("June 18 1996","December 21 2008","November 24 2009",
            "January 28 2015","June 04 1978","March 13 1998",
            "November 05 1977","February 04 1970","November 15 1973",
            "February 17 2013")

dates3 <- c("06181996","12212008","11242009","01282015",
            "06041978","03131998","11051977","02041970",
            "11151973","02172013")

dates4 <- c("1996/Jun-18","2008/Dec-21","2009/Nov-24",
            "2015/Jan-28","1978/Jun-04","1998/Mar-13",
            "1977/Nov-05","1970/Feb-04","1973/Nov-15",
            "2013/Feb-17")

dates1_c <- ymd(dates1)
dates2_C <- mdy(dates2)
dates3_c <- mdy(dates3)
dates4 <- ymd(dates4)

x <- "Tuesday 11 September 2018"
x_c <- parse_date_time(x, orders = "Admy")
x_d <- dmy(x)


date <- January the 