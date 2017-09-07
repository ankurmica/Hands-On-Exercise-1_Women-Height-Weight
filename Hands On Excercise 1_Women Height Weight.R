#1 Install a package - data.table

install.packages("data.table")

#2
#Install and Load package -datasets. Use
#"women" data frame available in this package.
#Find number of woman with height more than
#average but weight less than average
install.packages("datasets")
library("datasets")
hmean <- mean(women[[1]])
wmean <- mean(women[[2]])
count <- women[[1]]>hmean & women[[2]]<wmean
#women_df <- subset(women.height>hmean & women.weight<wmean)
c1<-count
table(c1)[TRUE]
reqcount <- length(c1[c1==TRUE])
reqcount

#3
#Create a data frame of 15 Indian cities and their
#population size. You could refer cities and
#population from this page.
#http://www.worldatlas.com/articles/the-biggest-cities-in-india.html
install.packages("rvest")
library(rvest)
city_link = "http://www.worldatlas.com/articles/the-biggest-cities-in-india.html"
city_file = read_html(city_link)
population <- c(46,20.8,14.7,10.6,10.1,9.7,7,6.4,5.3,4.6,3,2.92,2.9,2.5,2.4)
indiancities.data <- data.frame(city,population)
str(indiancities.data)
str(women)
