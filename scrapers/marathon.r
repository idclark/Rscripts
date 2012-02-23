rm(list=ls())

library(XML)
library(ggplot2)
library(reshape)


page_numbers <- 1:1430

weburl <- "http://results.public.chicagomarathon.com/2011/index.php?page=1&content=list&lang=EN&num_results=25&pid=list&search_sort_order=ASC&top_results=3&type=list"
pages <- rep(1,1430) 

tables <-(for i in page_numbers){
  readHTMLTable(weburl)
  
}


n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))

times <- tables[[which.max(n.rows)]]
