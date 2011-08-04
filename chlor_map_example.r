library(maps)
library(ggplot2)
states <- map_data("state")

arrests <- USArrests
names(arrests) <- tolower(names(arrests))
arrests$region <- tolower(rownames(USArrests))

choro <- merge(states, arrests, by="region")

choro <- choro[order(choro$order),]
qplot(long, lat, data= choro, group=group,
      fill = assault, geom="polygon")
qplot(long, lat, data = choro, group = group,
      fill = assault / murder, geom = "polygon")





