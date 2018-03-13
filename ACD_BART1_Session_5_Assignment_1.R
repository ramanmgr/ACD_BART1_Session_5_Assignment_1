##1. How many vowels are there in the names of USA States?

#Take the vector of State names and split it by " " to get individual character
# Unlist to flatten list to a vector

library(MASS)
data(USArrests)
States = rownames(USArrests)
View(States)

library(magrittr)

characters = state.name %>% strsplit(split = "") %>% unlist

#filter out vowels
vowels = characters[grepl (pattern = 'a|e|i|o|u' ,x = characters,
                           ignore.case = TRUE)] %>% tolower

table(vowels)


##2. Visualize the vowels distribution.


library(ggplot2)

#from the base plot using the ggplot function
ggp <- ggplot(data.frame(vowels), aes(x=vowels))

#call gemo_histogram and pass the stat as "count" to plot a histogram
ggp + geom_histogram(fill="lightgreen", stat="count")
