library(ggplot2)
library(hmisc)
library(googleVis)



fish<-read.csv("/Users/idclark/R/fishharvest.csv")

fish2 <- melt(fish, id=1:3, measure=4:24)

year <- rep(1985:2005, each=117)

fish2 <- data.frame(fish2,year)

fishdata <- data.frame(subset(fish2,fish2$var=="quantity_1000lbs", -4), value_1000dollars=subset(fish2,fish2$var=="value_1000dollars",-4)[,4])

names(fishdata)[4] <- "quantity_1000lbs"

fishharvest <- gvisMotionChart(fishdata, idvar="species", timevar="year")

plot(fishharvest)

fishdatagg2 <- ddply(fish2,.(species,var),summarise,
 mean = mean(value),
 se = sd(value)/sqrt(length(value))
)

fishdatagg2 <- subset(fishdatagg2,fishdatagg2$var %in% c("quantity_1000lbs","value_1000dollars"))
limit3 <- aes(ymax = mean + se, ymin = mean - se)

bysppfgrid <- ggplot(fishdatagg2,aes(x=reorder(species,rank(mean)),y=mean,colour=species)) + geom_point() + geom_errorbar(limit3) + facet_grid(. ~ var, scales="free") + opts(legend.position="none") + coord_flip() + scale_y_continuous(trans="log")

ggsave("bysppfgrid.jpeg")

