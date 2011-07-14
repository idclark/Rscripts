rm(list=ls())
#this doesn't work right now. debug later.
p<-c()

#packages to be installed on startup

#stata and other apps
 p <-c(p,"foreign")

#graphics
p<-c(p, "ggplot2")
p<-c(p, "lattice")
p<-c(p, "YaleToolkit")


#stats
p<-c(p, "lme4")
p<-c(p, "Zelig")

repositories<-c("http://software.rc.fas.harvard.edu/mirrors/R")
 function(pack,repositories){
     if(!(pack %in% row.names(installed.packages()))){
         update.packages(repos=repositories, ask=F)
         install.packages(pack, repos=repositories, dependencies=T)
     }
     require(pack, character.only=TRUE)
 }
for(pack in p){
    install.packages(pack, repositories)
}


