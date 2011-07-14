#ibrary(XML)
#theurl <- "http://en.wikipedia.org/wiki/Brazil_national_football_team"
#tables <- readHTMLTable(theurl)
#n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))
#the picked table is the longest one on the page

#tables[[which.max(n.rows)]]

library(XML)
library(ggplot2)
library(reshape)

weburl <- "http://www.pgatour.com/leaderboards/current/r480/alt-1.html"
tables <- readHTMLTable(weburl)
n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))

scores <- tables[[which.max(n.rows)]]

#how to convert to dataframe??
as.data.frame

#rename
mydata = rename(mydata,c(oldname="newname"))

as.numeric(data)
#coerce to a numeric data type.

write.csv(data,file=" ")
#write read in the csv

name <- as.numeric(paste(data$data))
#parses factors to numerics.


