## Idea taken from http://blog.trenthauck.com/2011/12/03/visualizing-unemploymen## t -data/

# pull data from: "http://www.bls.gov/web/laus/laumstrk.htm"

# easiest way to copy/paste into spreadsheet and make a csv
library(ggplot2)
library(maps)

unemp <- read.csv("unemployment.csv",header=F)

names(unemp) <- c("region", "percent")
unemp$region <- tolower(unemp$region)

state_df <- map_data("state")
merged <- merge(state_df, unemp, by="region")
merged <- merged[order(merged$order),]

ggplot(merged, aes(long, lat, group = group)) +
 geom_polygon(aes(fill = unemp), colour = alpha("white", 1/2), size = 0.2) +
 geom_polygon(data = state_df, colour = "white", fill = NA)


