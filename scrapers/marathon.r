rm(list=ls())

library(XML)
library(ggplot2)
library(reshape)


page_numbers <- 1:1429
urls <- paste(
  "http://results.public.chicagomarathon.com/2011/index.php?page", 
  page_numbers, 
  sep = "="
)
#weburl <- "http://results.public.chicagomarathon.com/2011/index.php?pid=list"
tables <-(for i in page_numbers){
  readHTMLTable(urls)
}

tables <- readHTMLTable(urls)
n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))

times <- tables[[which.max(n.rows)]]
