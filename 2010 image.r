
R version 2.12.0 (2010-10-15)
Copyright (C) 2010 The R Foundation for Statistical Computing
ISBN 3-900051-07-0
Platform: x86_64-apple-darwin9.8.0/x86_64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.35 (5632) x86_64-apple-darwin9.8.0]

[Workspace restored from /Users/idclark/.RData]
[History restored from /Users/idclark/.Rhistory]

> library(XML)
Error in library(XML) : there is no package called 'XML'
> install.packeages(XML)
Error: could not find function "install.packeages"
> install.packages(XML)
Error in install.packages(XML) : object 'XML' not found
> install.packages("XML")
trying URL 'http://software.rc.fas.harvard.edu/mirrors/R/bin/macosx/leopard/contrib/2.12/XML_3.2-0.tgz'
Content type 'application/x-gzip' length 1442451 bytes (1.4 Mb)
opened URL
==================================================
downloaded 1.4 Mb


The downloaded packages are in
	/var/folders/0f/0fKKOfQEEeScT98kOqBEiU+++TI/-Tmp-//Rtmp9IEn9v/downloaded_packages
> install.packages("stringr")
trying URL 'http://software.rc.fas.harvard.edu/mirrors/R/bin/macosx/leopard/contrib/2.12/stringr_0.4.tgz'
Content type 'application/x-gzip' length 54056 bytes (52 Kb)
opened URL
==================================================
downloaded 52 Kb


The downloaded packages are in
	/var/folders/0f/0fKKOfQEEeScT98kOqBEiU+++TI/-Tmp-//Rtmp9IEn9v/downloaded_packages
> library(XML)
> library(stringr)
> URL<-"http://www.boston.com/news/special/politics/2010/governor/results/"
> tables<-readHTMLTable(URL)
> n.rows<-unlist(lapply(tables,functions(t)dim(t)[1]))
Error: unexpected symbol in "n.rows<-unlist(lapply(tables,functions(t)dim"
> n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))
> results.temp<-tables[[which.max(n.rows)]]
> str(results.temp)
'data.frame':	353 obs. of  6 variables:
 $ V1: Factor w/ 353 levels "Abington","Acton",..: 64 1 2 3 4 5 6 7 8 9 ...
 $ V2: Factor w/ 33 levels "0 of 1","1 of 1",..: 33 24 28 20 26 31 2 28 3 32 ...
 $ V3: Factor w/ 341 levels "0","1,022","1,032",..: 341 171 182 34 275 238 213 139 327 304 ...
 $ V4: Factor w/ 299 levels "0","1","1,011",..: 299 284 146 164 53 31 198 194 108 231 ...
 $ V5: Factor w/ 343 levels "0","1,002","1,013",..: 343 122 255 120 66 201 108 143 276 264 ...
 $ V6: Factor w/ 160 levels "0","10","100",..: 160 128 13 85 59 55 78 17 106 19 ...
> View(head(results.temp,n=25))
> names(results.temp)<-c("city","pctreport","baker","cahill","patrick","stein")
> for(i in c(3:6))  {
+ results.temp[,i]<-as.numeric(as.charachter(gsub)","",results.temp[,i]")))}
Error: unexpected string constant in:
"for(i in c(3:6))  {
results.temp[,i]<-as.numeric(as.charachter(gsub)",""
> or(i in c(3:6)) {
Error: unexpected 'in' in "or(i in"
> 	# convert to number, but need to remove the comma that gets pulled from the site
> 	results.temp[, i] <- as.numeric(as.character(gsub(",", "", results.temp[, i])))
Error in `[.data.frame`(results.temp, , i) : object 'i' not found
> }
Error: unexpected '}' in "}"
> for(i in c(3:6)) {
+ 	# convert to number, but need to remove the comma that gets pulled from the site
+ 	results.temp[, i] <- as.numeric(as.character(gsub(",", "", results.temp[, i])))
+ }
Warning messages:
1: NAs introduced by coercion 
2: NAs introduced by coercion 
3: NAs introduced by coercion 
4: NAs introduced by coercion 
> results.temp$city<-as.character(results.temp$city)
> results.detail<-results.temp[1:nrow(results.temp)-1,]
> totals<-results.temp[nrow(results.temp),]
> totals
     city      pctreport  baker cahill patrick stein
353 Total 2,167 of 2,168 962671 183892 1108028 32816
> plot.data<-as.vector(t(totals[,3:6]))
> names(plot.data)<-c("baker","cahill","patrick","stein")
> plot(race.plot)
Error in plot(race.plot) : object 'race.plot' not found
> plot(plot.data)
> race.plot<-barplot(plot.data,main="test rep",xlab="candidate")
> text(c(1:4),y=20000,labels=plot.data)
> plot(plot.data)
> barplot(plot.data)
> save(2010.results,file="/Users/idclark/R/2010.results.RData")
Error: unexpected symbol in "save(2010.results"
> 2010<-save(2010.results,file="/Users/idclark/R/2010.results.RData")
Error: unexpected symbol in "2010<-save(2010.results"
> setwd("/Users/idclark/R/")
> save(2010.results,file="~/2010.results.RData")
Error: unexpected symbol in "save(2010.results"
> help(save)
starting httpd help server ... done
> save<-(2010.results,file="~/2010.results.RData")
Error: unexpected symbol in "save<-(2010.results"
> save(plot.data,file="~/2010.results.RData")
> 