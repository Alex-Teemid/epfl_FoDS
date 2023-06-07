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
  "infer",
  "visdat"
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
  "infer",
  "visdat"
)

lapply(packages, library, character.only = TRUE)

install.packages("tidylog")
library(tidylog)

install.packages("ViewPipeSteps")
library(ViewPipeSteps)


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
mtcars %>% str_glue_data("{rownames(.)} has {hp} hp") #use in automation of reporting

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


?make_date
my_year <- c(2019, 2025, 2021, 2026)
my_month <- c(1,2)

date <- make_date(year = my_year, month = my_month)
sort(date)

month(date)

dates1 <- c("1996-06-18","2008-12-21","2009-11-24","2015-01-28",
            "1978-06-04","1998-03-13","1977-11-05","1970-02-04",
            "1973-11-15","2013-02-17")
year(dates1)

dates <- c("June 18 1996","December 21 2008","November 24 2009",
           "January 28 2015","June 04 1978","March 13 1998",
           "November 05 1977","February 04 1970","November 15 1973",
           "February 17 2013")

dates <- mdy(dates)

dates_add <- dates + days(x = 1) + months(x = 2) 

dates
dates_add
?days

make_date(2018)
?floor_date()

dates <- mdy(c("June 18 1996","December 21 2008","November 24 2009",
           "January 28 2015","June 04 1978","March 13 1998",
           "November 05 1977","February 04 1970","November 15 1973",
           "February 17 2013"))

x <- ymd_hms("2009-08-03 12:01:59.23")
round_date(x, "sec")

floor_date(dates, "week", week_start = 1)
ceiling_date(dates, "week", week_start = 1)


# Tibbles -----------------------------------------------------------------

View(mtcars)
head(mtcars, 3)
tail(mtcars, 3)
ncol(mtcars)
nrow(mtcars)

vis_dat(mtcars)
vis_dat(CO2)
vis_dat(airquality) # showing NAs
vis_miss(airquality)

sum(is.na(airquality))

as_tibble(mtcars)

#is this someting to be used in MCI dataset?
mtcars_tibble <- as_tibble(
  rownames_to_column(mtcars, "model"))

names(mtcars_tibble) #can be used to check spelling

tribble() #used to create a tiblle from scratch

cosmic_table <- tribble(
  ~Planet, ~Distance,
  "Mars", 228L,
  "Earth", 150L,
  "Venus", 108L,
  "Mercury",58L
)
cosmic_table


#MCI 
#maybe when importing its best to skip the names of the columns and rename them manually? using read_xlsx

stones_data <- read_csv("data/rolling_stones.csv")
stones_data

sales_report <- read_tsv("data/sales_data.tsv", skip = 3)

iris_tibble <- as_tibble(iris)
glimpse(iris_tibble)

iris_tibble |> 
  select(Sepal.Length, Sepal.Width)

glimpse(stones_data)
select(stones_data, song_name, song_duration, song_name)

select(stones_data, live, everything()) #reordering columns MCI do microbenchmark on this and the reorder function

glimpse(sales_report)
select(sales_report, data_zamowienia = order_date, status, everything())

select(sales_report, order_date, banana)

# Remember that the conditions written in filter() are tests, not assignments - that is why we use double equal sign in it 
filter(stones_data, song_duration <= 280)
filter(stones_data, live == FALSE, album_name == "Flashpoint")


unique(sales_report$status)
filter(sales_report, 
       status == "In Process", 
       country == "France", 
       product_type == "Classic Cars")


View(filter(stones_data, live)) # checking if the condition is TRUE on live events

arrange(iris_tibble, Petal.Width, Petal.Length)

?arrange
?desc

first_day <- seq(as.Date("1910/1/1"), as.Date("1920/1/1"), "years")
desc(first_day)

arrange(sales_report, desc(quantity))

stones_data |>
  select(song_name, song_popularity, song_duration, release_year) |>
  filter(song_popularity > 10) |>
  arrange(desc(release_year))

glimpse(sales_report)  

sales_report |> 
  mutate(sales = quantity * unit_price,
           year = year(dmy(order_date))) |> 
           View()

stones_data %>%
  rename(song_title = song_name)

glimpse(sales_report)
sales_report |> 
  rename(order_status = status,
         date = order_date) 

glimpse(stones_data)

stones_data |> 
  ggplot(aes(x = song_duration, y = song_popularity, colour = live)) +
  geom_point() +
  geom_vline(xintercept =60, color = "red") 

stones_data |>
  select(album_name, song_duration) |> 
  group_by(album_name) |> 
  summarise(total = sum(song_duration)) |> 
  ggplot(aes(x = fct_reorder(album_name, total, .desc = TRUE), y = total)) +
  geom_col(fill = "lightblue") + 
  coord_flip() +
  labs(title = "Total duration of each album",
       subtitle = "Using colors to show live vs studio songs",
       caption = "Source: Rolling Stone Spotify Dataset",
       x = "Album Name",
       y = "Duration",
       fill = "Live song?")

stones_data |> 
  filter(release_year < 1995) |> 
  ggplot(aes(x = song_popularity, y = song_duration, colour = album_name)) + 
  geom_point() +
  labs(title = "Popularity of albums for song dated prio year 1995", 
       subtitle = "Which ablum is the most popular?") +
  theme_light()


# Intermediate Data Wrangling ---------------------------------------------
stones_data |> 
  distinct(release_year, live)

glimpse(stones_data)

stones_data |> 
  select(song_name, song_popularity) |> 
  mutate(highest_popularity = max(song_popularity), popularity_ratio = song_popularity/highest_popularity)

glimpse(sales_report)

sales_report |> 
  mutate(sales = quantity * unit_price) |>
  select(order_id, sales) |> 
  summarise(number_of_order = n(), total_sales = sum(sales))

stones_data %>%
  group_by(live) %>%
  summarise(mean_popularity = mean(song_popularity))

sales_report %>%
  mutate(sales = unit_price * quantity) %>%
  group_by(product_type) %>%
  summarise(sales = sum(sales)) |> 
  arrange(desc(sales))

#In stones_data, how would you get the shortest song per year and separating live (live=TRUE) from studio (live=FALSE)
glimpse(stones_data)

stones_data |> 
  group_by(release_year, live) |> 
  summarise(min_duration = min(song_duration)) |> 
  ungroup()

#Starting from stones_data, use group_by() to group the tibble by release_year then add a column named max_duration with the maximum song_duration per release_year.

stones_data |> 
  group_by(release_year) |> 
  summarise(max_duration = max(song_duration)) |> 
  ungroup()

#Starting from sales_report, use group_by() to group the tibble by year (as created two units ago) then add a column named orders_per_year with the number of rows in each group.
glimpse(sales_report)

sales_report |> 
  group_by(year(dmy(order_date))) |> 
  summarise(orders_per_year = n())

?n() #gives the current group size - does not have to be used with sum()

sales_report %>%
  mutate(sales = unit_price * quantity) %>% # no need for groups for this one
  group_by(country) %>%
  mutate(percent_of_sales_for_country = sales / sum(sales))  %>%
  ungroup() # Let's not forget to ungroup


stones_data |>
  group_by(album_name) |>
  filter(n() > 18) |> 
  ungroup() |> 
  distinct(album_name)
  
sales_report %>%
  arrange(desc(quantity)) %>%
  group_by(country) %>%
  filter(row_number() == 2) 



