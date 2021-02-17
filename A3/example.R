setwd("path\\to\\data")
dataset <- read.csv("filename.csv", skip=6, row.names=1, header=TRUE)
dataset <- dataset[-c(1,2),] #Make sure to remove the correct rows

dataset[1,] <- as.numeric(dataset[1,])
dataset[2,] <- as.numeric(dataset[2,])

dataset1 <- dataset[,seq(1,ncol(dataset),by=2)] #Used to split the dataset in two
dataset2 <- dataset[,seq(2,ncol(dataset),by=2)]
dataset2[1,] <- dataset1[1,]

row.names(dataset1)[1] <- "name1"
row.names(dataset2)[1] <- "name2"

row.names(dataset1)[2] <- "name3"
row.names(dataset2)[2] <- "name4"

#dataset1 <- t(dataset1)
#dataset2 <- t(dataset2)
