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
  "visdat",
  "readxl",
  "openxlsx"
)

lapply(packages, library, character.only = TRUE)

lapply(packages, library, character.only = TRUE)

# For encryption: ---------------------------------------------------------
library(digest)
library(encryptr) #devtools::install_github("SurgicalInformatics/encryptr")


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

substring(text = "my text", first = 2)
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


mtcars %>% str_glue_data("{rownames(.)} has {hp} hp") #use in automation of reporting
mtcars

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
 
# Sometimes, you want to get all the items in a vector that satisfy a specific condition. 
# This is known as subsetting.
my_vec <- c(1,2,3)
my_index <- c(FALSE,TRUE,FALSE)
my_vec[my_index] # Should just return 2

higher_than <- my_numbers > 5
my_numbers[higher_than]

my_vec <- c(2,4,5,34,29,1,0,8,78)
bigger_than_25 <- my_vec > 25

# R doesn't complain if the logical index vector you provide does not have the same 
# number of items as the vector to subset.
my_vec[bigger_than_25]
sum(my_vec[my_vec > 25]) 

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
#maybe when importing its best to skip the names of the columns and rename them 
#manually? using read_xlsx

stones_data <- read_csv("data/rolling_stones.csv")
spec(stones_data)

sales_report <- read_tsv("data/sales_data.tsv", skip = 3)

iris_tibble <- as_tibble(iris)
glimpse(iris_tibble)

iris_tibble |> 
  select(Sepal.Length, Sepal.Width)

glimpse(stones_data)
select(stones_data, song_name, song_duration, song_name)

select(stones_data, live, everything()) #reordering columns MCI do microbenchmark 
#on this and the reorder function

glimpse(sales_report)
select(sales_report, data_zamowienia = order_date, status, everything())

select(sales_report, order_date, banana)

# Remember that the conditions written in filter() are tests, not assignments - 
# that is why we use double equal sign in it 
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
  mutate(
    highest_popularity = max(song_popularity),
    popularity_ratio = song_popularity/highest_popularity)

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

#In stones_data, how would you get the shortest song per year and separating live (live=TRUE) 
#from studio (live=FALSE)
glimpse(stones_data)

stones_data |> 
  group_by(release_year, live) |> 
  summarise(min_duration = min(song_duration)) |> 
  ungroup()

#Starting from stones_data, use group_by() to group the tibble by release_year 
#then add a column named max_duration with the maximum song_duration per release_year.

stones_data |> 
  group_by(release_year) |> 
  summarise(max_duration = max(song_duration)) |> 
  ungroup()

#Starting from sales_report, use group_by() to group the tibble by year (as created 
#two units ago) then add a column named orders_per_year with the number of rows in each group.
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

excel <- read_excel("data/country_data.xlsx", skip = 2)
write.xlsx(x = excel, file = "data/excel.xlsx")

sales_xls <- read_excel("data/sales_data_sample.xlsx", sheet = 2, skip = 2)
names(sales_xls) <- tolower(names(sales_xls))

View(sales_xls)

sales_xls |> 
  mutate(manager = if_else(dealsize %in% c("Small","Medium"), "Tim", "Sonia")) |> 
  View()

stones_data |>
  mutate(mean = mean(song_popularity),
    favourite = if_else(song_popularity > mean(song_popularity), TRUE, FALSE)) |> 
  View()


sales_xls %>%
  mutate(manager = case_when(
    dealsize == "Small" ~ "Tim",
    dealsize == "Medium" ~ "Olga",
    dealsize == "Large" ~ "Sonia",
    .default = "-")) |> 
  View()

stones_data |> 
  mutate(case_when(
    song_duration <= 200 ~ "short",
    song_duration <= 300 ~ "medium",
    .default = "long")) |> 
  View()


sales_xls_w_continent <- sales_xls %>%
  mutate(continent = case_when(
    # We will cover shorter ways to do long match lists like this later
    country == "USA" ~ "North America",
    country == "France" ~ "Europe",
    country == "Norway" ~ "Europe",
    country == "Australia" ~ "Oceania",
    country == "Finland" ~ "Europe",
    country == "Austria" ~ "Europe",
    country == "UK" ~ "Europe", 
    country == "Spain" ~ "Europe",
    country == "Sweden" ~ "Europe",
    country == "Singapore" ~ "Asia",
    country == "Canada" ~ "North America",
    country == "Japan" ~ "Asia",
    country == "Italy" ~ "Europe",
    country == "Denmark" ~ "Europe",
    country == "Belgium" ~ "Europe",
    country == "Philippines" ~ "Asia",
    country == "Germany" ~ "Europe",
    country == "Switzerland" ~ "Europe",
    country == "Ireland" ~ "Europe"
  ))

n_of_order_per_continent <- 
  sales_xls_w_continent %>% 
  group_by(continent, dealsize) %>% 
  summarise(n_of_order = n()) %>% 
  ungroup()

View(n_of_order_per_continent)

ggplot(data = n_of_order_per_continent,
       mapping = aes(x = continent,
                     y = n_of_order,
                     fill = dealsize)) +
  geom_col()  +
  labs(title = "Number of orders per continent",
       subtitle = "Colors represent dealsizes")


# Wide & long data --------------------------------------------------------

survey <- read_csv("projects/project_1/data/survey.csv")

survey_data |> 
  ggplot(aes(x = id, fill = position)) +
  geom_bar() +
  coord_flip() +
  labs(title = "Number of survey participants by position",
       subtitle = "The most common positions were Postdocs and PhDs")

glimpse(survey_data)

survey_data |> 
  pivot_longer(
    cols = number_of_ph_d_students : number_of_professors,
    names_to = "employee_type", values_to = "employee_number") |> 
  ggplot(aes(x = id, y = employee_number, fill = employee_type)) + 
  geom_col(position = "fill") +
  coord_flip() + 
  labs(title = "Employees role percentages for each group",
      subtitle = "We can see that goups can have very different splits",
      y = "Percentage",
      x = "Research group id") +
  theme(legend.position = "bottom")


# Reshaping tibbles -------------------------------------------------------

stones_data |> 
  group_by(album_name) 
  mutate(number_of_songs = )
  tidyr::pivot_longer()

  
stones_data |>
  group_by(album_name) |>
  mutate(number_of_songs = n()) |> 
  mutate(avg_popularity = mean(song_popularity)) |> 
  select(album_name, number_of_songs, avg_popularity) |> 
  tidyr::pivot_longer(
    cols = -album_name,
    names_to = "metrics",
    values_to = "value") |> 
  View()
  

#same as above can be achieved with:

stones_data |>
  group_by(album_name) |>
  summarise(
    number_of_songs = n(),
    avg_popularity = mean(song_popularity)) |> 
  tidyr::pivot_longer(
    cols = -album_name,
    names_to = "metrics",
    values_to = "value") |> 
  View()

sales_report |> 
  group_by(product_type) |> 
  summarise(
    number_of_orders = n(),
    total_quantity = sum(quantity)) |> 
  tidyr::pivot_longer(
    cols = c("number_of_orders", "total_quantity"),
    names_to = "metrics",
    values_to = "value") |> 
  View()



stones_data |> 
  group_by(release_year, live) |> 
  summarise(total = n()) |> 
  pivot_wider(
    names_from = live,
    values_from = total,
    values_fill = list(total = 0)
  ) |> 
  rename(not_live = `FALSE`, live = `TRUE`) |> 
  View()

sales_report |> 
  mutate(sales = unit_price * quantity) |> 
  group_by(status, deal_size) |> 
  summarise(total = sum(sales)) |> 
  pivot_wider(
    names_from = deal_size,
    values_from = total,
    values_fill = list(total = 0)) |> 
  View()


# Pivoting ----------------------------------------------------------------

department_revenue <- tibble(
  department = c("Grocery", "Toys"),
  aug_2018 = c(4234, 2349),
  sep_2018 = c(234, 2454),
  oct_2018 = c(98, 2354),
  nov_2018 = c(78698, 8900),
  dec_2018 = c(9876, 8901)
)

department_revenue  |> 
  pivot_longer(cols = c(-department), 
               names_to = "months", 
               values_to = "revenue") |> 
  mutate(months = lubridate::parse_date_time(months, orders="%m_%Y", truncated = 4))  |> 
  ggplot(aes(x = months, y = revenue, color = department)) +
  geom_line()


candidate_grades <- tibble(
  candidate = c("A", "B", "C"),
  judge_1 = c(15, 19, 13),
  judge_2 = c(13, 12, 14),
  judge_3 = c(16, 11, 14)
)       


candidate_grades %>%
  tidyr::pivot_longer(
    cols = c(-candidate), 
    names_to = "judge", 
    values_to = "grade") %>%
  ggplot(mapping = aes(x = candidate, y = grade, fill = judge)) +
  geom_col()

candidate_grades <- tibble(
  candidate = c("A", "B", "C"),
  judge_1 = c(15, 19, 13),
  judge_2 = c(13, 12, 14),
  judge_3 = c(16, 11, 14)
)


candidate_grades %>%
  tidyr::pivot_longer(
    cols = c(judge_1, judge_2, judge_3), 
    names_to = "judge", 
    values_to = "grade") %>%
  group_by(candidate) %>% 
  summarise(min_grade = min(grade),
            max_grade = max(grade)) %>% 
  tidyr::pivot_longer(
  cols = c(min_grade, max_grade), 
  names_to = "grade_type", 
  values_to = "grade")



# Nested values -----------------------------------------------------------

client_order <- tibble(
  client_name = c("Smith", "Martin", "Muller"),
  meal = c("steak, lentils, feta", "beans, feta", "olive, feta, beans")
)

client_order %>%
  mutate(items = str_split(meal, ", ")) |> 
  pull(items)

client_order %>%
  mutate(items = str_split(meal, ", ")) %>%
  unnest_longer(items) |> 
  View()

client_items <- client_order %>%
  mutate(items = str_split(meal, ", ")) %>%
  unnest_longer(items)

client_items %>%
  group_by(items) %>%
  summarise(n_of_order = n()) |> 
  ungroup() |> 
  arrange(desc(n_of_order))

#the above can be easily done with count:

client_items |> 
  count(items, name = "n_of_order", sort = TRUE)

glimpse(starwars)

starwars |> 
  select(name, films, vehicles, starships) |> 
  View()


starwars |> 
  count(films, name, sort = TRUE)

starwars |> 
  unnest_longer(films) |> 
  select(films, name) |> 
  count(films, name = "n_of_characters", sort = TRUE)


# Binding -----------------------------------------------------------------

bind_rows(stones_data, stones_data, stones_data)

glimpse(stones_data)

stones_data %>%
  select(album_name, release_year, everything()) %>%
  bind_rows(stones_data) 

stones_data %>%
  select(release_year) %>% # Only keeping release_year
  bind_cols(
    select(stones_data, -release_year)) # No release_year

budget_19s <- tibble(
  country = c("France", "Germany"),
  budget_1900 = c(1234, 4511),
  budget_1901 = c(5449,  3214),
  budget_1902 = c(8790, 9876)
)

budget_20s <- tibble(
  country =  c("France", "Germany"),
  budget_2000 = c(9877, 9867),
  budget_2001 = c(1243,  5769)
)

bind_cols(budget_19s, budget_20s)


# Joining -----------------------------------------------------------------
#instead of making a key we can join using multiple columns to be used in MCI
table_1 %>%
  left_join(table_2, by=c("Canton", "Zone"))

shop_db <- dbConnect(RSQLite::SQLite(), "data/shop.db") 

dbListTables(shop_db)
dbDisconnect(shop_db)

sales <- DBI::dbGetQuery(shop_db, 
                         "SELECT date, price FROM sales;")

customers_tbl <- tbl(shop_db, "customers")

customers_tbl %>%
  select(first_name) %>%
  show_query()

sales
class(sales)


sales_tbl <- tbl(shop_db, "sales") 

customers_tbl %>%
  left_join(sales_tbl, by=c("customer_id")) %>%
  show_query()





snowflake_mci <- dbConnect(odbc::odbc(), "Snowflake_MCI") #establish odbc connection with OneRing data source 
snowflake_sales_data <- DBI::dbGetQuery(snowflake_mci, #import sales for the last period 
                                        "SELECT PROD_PL2A, PROD_PL4,GPCH_PARAMETER,FISCAL_YEAR , PROD_PL6_PROFIT_CENTER_NBR, PROD_PL6_PROFIT_CENTER, CURRENCY, CER_RATE, MARKET_REGION,
                             SUM(SALES) AS SALES
                             FROM PROD_DIA.DP_FINANCE_BA_MCI.BA_MCI
                             WHERE PROD_PL2A = 'RDS' AND PROD_PL4 IN ('CC', 'IM')
                             GROUP BY PROD_PL2A, PROD_PL4,GPCH_PARAMETER , FISCAL_YEAR, PROD_PL6_PROFIT_CENTER_NBR, PROD_PL6_PROFIT_CENTER, CURRENCY, CER_RATE, MARKET_REGION
                             ORDER BY FISCAL_YEAR ASC;")
  
mci_tbl <- tbl(snowflake_mci, "BA_MCI") #save table connection
glimpse(mci_tbl)

mci_tbl |> 
  select(PROD_PL4) 

mci_tbl |> 
  select(PROD_PL4) |> 
  distinct_all() |> 
  show_query()


customers_tbl %>%
  select(first_name) %>%
  collect() #collect is used to retrive the entire table | verything that comes before collect() in the pipeline will be converted to SQL 


# Encryption and Anonnymization --------------------------------------------

digest("Leo Johnson", algo = "md5")
digest("Leo Johnson", algo = "crc32")
digest("Leo Johnson", algo = "sha256")

sales_report %>%
  mutate(country = digest(country)) %>%
  select(country)

genkeys() ## Generates both public and private keys in current directory 
encrypted_name <- "Norma Jennings" |> 
  encrypt_vec(public_key_path = "./id_rsa.pub")

decrypt_vec(encrypted_name)


encrypted_data <- sales_report |> 
  select(deal_size) |> 
  encrypt(deal_size)

encrypted_data |> 
  decrypt(deal_size)

encrypt_file(.path = "data/sales_data.tsv",
             public_key_path = "./id_rsa.pub",
             crypt_file_name = "data/sales_data.tsv.encryptr.bin")

decrypt_file(.path = "data/sales_data.tsv.encryptr.bin",
             private_key_path = "id_rsa",
             file_name = "decrypted_file.tsv")

encrypted_exercise1 <- "a81e94bf2fa0a9ec6a6805ed5fe95deb0c2751d7c2722a0fbaa5223dabe6fb7a4e39df7c8299997ef5ef71720c8342773980a0a5f3e12b26352ed12f5b95e7b63b7e66deb78e803d5164db7386574d9b7e7bcb402b4964de488121d73b43affc2377ef7abd7941b4283a07aeaa84eabafa460434d8796d49d19474e9d35c53577f0c8895bcc4d9a933ca5efc57bfd30637e395e7b8dba6c563bdb666c88191011ff76e94ca363845cd374a646422db196b778ac4ce0e9d00a1262dc7ee157071323a041298d316e348544de373c7e51336401d3df6ad601e2efed69cbf913c54f00675080067caeb11018adfc949142543663d7c69f00e54272cf8201c2e627e"
decrypt_vec(encrypted_exercise1, private_key_path = "data/encryption/id_rsa")

decrypt_file(.path = "data/encryption/message.txt.encryptr.bin",
            file_name = "encrypted_exercise2.txt",
            private_key_path = "data/encryption/id_rsa")


# Advanced data wrangling -------------------------------------------------

sales_xls <- read_excel("data/sales_data_sample.xlsx", sheet = "sales_data_sample", skip = 2) |> 
  clean_names()

glimpse(sales_xls)

stones_data |> 
  select(starts_with("song_")) |> 
  View()

stones_data |> 
  select(starts_with("song_"), ends_with("_year")) |> 
  View()

sales_xls |> 
  select(contains("line"), everything()) |> 
  View()

sales_xls |> 
  select(3, everything()) |> 
  View()

sales_xls |> 
  select_if(is.numeric)

sales_xls |> 
  mutate(full_adress = str_glue("{address_line1}, {postal_code}, {city})")) |> 
  pull(full_adress) 


# %in% --------------------------------------------------------------------

sales_xls |> 
  filter(state %in% c("NY", "CA")) |> 
  View()


# between() --------------------------------------------------------------

stones_data |> 
  filter(between(release_year, 1985, 1990)) |> 
  View()

#string to detect 

stones_data |> 
  filter(str_detect(song_name, "Love")) |> 
  View()

# rename_all() ------------------------------------------------------------

sales_report %>%
  rename_all(str_to_upper) #N ote that we are giving a function as an argument so we don't put parentheses after it


# advanced mutate() -------------------------------------------------------

sales_report |> 
  mutate(order_date = dmy(order_date)) |> 
  glimpse()

# If you don't like the sound of vectorised/non-vectorised functions, 
# think of it functions that work-even-with-multiple-items/work-only-on-one-item.

sales_xls %>%
  mutate(date = make_date(year_id, month_id, qtr_id)) |> 
  pull(date)

#for(i in <a collection>) {
#  <do something with value i>
#}

for(i in c("hello", "hallo", "bonjour")) {
  print(i)
}

for(i in c(10, 100, 1000)) {
  print(i + 10)
}


new_plus10_vector <- c()
for(i in c(10, 100, 1000)) {
  new_plus10_vector <- append(new_plus10_vector, (i + 10))
}
new_plus10_vector

collection_of_hashes <- c()
for(i in c("Serena Williams", "Roger Federer")) {
  collection_of_hashes <- append(collection_of_hashes, digest(i))
}
collection_of_hashes


# example for loop --------------------------------------------------------

tennis_data <- tibble(
  full_name = c("Serena Williams", "Roger Federer"),
  number_of_titles = c(72, 102)
)

# Let's do the first transformations in a pipeline
tennis_data_lower <- tennis_data %>%
  mutate(full_name = str_to_lower(full_name),
    number_of_titles = round(number_of_titles))

# Here we have to stop our pipeline to use a for loop
digests_of_name <- c()
for(name in tennis_data_lower$full_name) {
  digests_of_name <- append(digests_of_name, digest(name)) 
}

# Once our job is done with the for loop, we can restart the pipeline
tennis_data_lower %>%
  mutate(hashed_name = digests_of_name) %>% # give to mutate our newly created vector
  separate(full_name, into=c("first_name", "last_name"), sep = " ") %>%
  select(-first_name)


# purr --------------------------------------------------------------------

library(purrr) 

map(c("Serena Williams", "Roger Federer"), digest)

tennis_data %>%
  mutate(anonymized_name = map(full_name, digest)) |> 
  unnest(anonymized_name)

sales_report |> 
  arrange(country, order_date) |> 
  group_by(country) |> 
  mutate(first = first(order_date), last = last(order_date)) |> 
  ungroup() |> 
  mutate(sales = quantity * unit_price, sales_vs_last = sales/lag(sales)-1, sales_vs_next = sales/lead(sales)-1) |> 
  View()

my_first_function <- function() { "hello" }

#There are several differences between functions and static values. 
#An important one is that functions are evaluated every time you call them, 
#whereas normal variables are evaluated and saved only on their first assignment.

lubridate::now()

time_now <- lubridate::now()

time_now #does not change its value

what_is_now_dynamic <- function() { lubridate::now() }

what_is_now_dynamic()

now_tomorrow <- function() {
  lubridate::now() + lubridate::days(1)
}

now_tomorrow()
