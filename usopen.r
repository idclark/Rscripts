rm(list=ls())

library(XML)
library(ggplot2)
library(reshape)

weburl <- "http://www.pgatour.com/tournaments/r026/results.html"

tables <- readHTMLTable(weburl)
n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))

scores <- tables[[which.max(n.rows)]]

# object <- as.numeric(paste(data$data))
#paste somehow will convert to proper data type

scores$strokes <- as.numeric(paste(scores$Strokes))
#total strokes to numeric

scores$total <- as.numeric(paste(scores$Total),use NA=="Never")
# total over under par to numeric

scores$total[scores$total=="NA"] <- 0
#convert E even to 0 numeric.

write.csv(scores,file="/Users/idclark/Desktop/USOpen.csv")
