# Data Manipulation with dplyr in R 
# data: 2015 United States Census  

select() 
arrange() 
filter() 
mutate()

=============================================================================

## glimpse ##
counties
glimpse(counties)

## select ##
# select
counties %>%   # %>%: pipe operator
  select(state, county, population, unemployment)
  
# creating a new table
counties_selected <- counties %>%    
  select(state, county, population, unemployment)

counties_selected 
  
=============================================================================

## arrange ##
counties_selected %>%
  arrange(population)

counties_selected %>%
  arrange(desc(population)) # descending

## filter ##
counties_selected %>%
  arrange(desc(population)) %>%
  filter(state == "New York")

counties_selected %>%
  arrange(desc(population)) %>%
  filter(unemployment < 6)

counties_selected %>%
  arrange(desc(population))  %>%
  filter(state == "New York",
        unemployment < 6)

counties_selected %>%
    filter(state == "California",
        population > 1000000)
=============================================================================

counties_selected <- counties %>%
  select(state, county, population, private_work, public_work, self_employed)

counties_selected %>%
  arrange(desc(public_work)) 

=============================================================================
counties_selected %>%
  arrange(desc(private_work)) %>%
  filter(state == "Texas",
        population > 10000)
  
