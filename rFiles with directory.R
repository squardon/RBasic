fileData <- read.csv(file = "/Users/talha/Desktop/rFilesWithDirectory/WHO.csv", header=TRUE, sep=",")
fileData

attach(fileData)
#Writing summary now
summary(fileData)

fileData
#Getting stucture of data
str(fileData)

#Getting Sunmmary of each variable
summary(Region)
summary(Under15)

#SubsetOfVariable
fileDataSubsetOfEurope <- subset(fileData,Region == "Europe")
fileDataSubsetOfEurope

#writing new data set
write.csv(fileDataSubsetOfEurope,"EuropeData.csv")

#finding means
mean(fileDataSubsetOfEurope$Under15)

#finding summary of specific value
summary(fileDataSubsetOfEurope$Under15)

#Finding Min and Max vlaue using which statement
which.min(fileDataSubsetOfEurope$Under15)
which.max(fileDataSubsetOfEurope$Under15)

#Plots data in between variables
#plot(fileData)
plot(fileData$Region,fileData$Under15,main = "Scatterplot")
outLiers <- subset(fileData,GNI>1000 & FertilityRate > 2.5)
outLiers

#finding rows in outlier
outLiers [c("Country","GNI","FertilityRate")]

#Creating Histogram
hist(fileData$CellularSubscribers)
mode(fileData$CellularSubscribers)
mean(fileData$CellularSubscribers)
plot(fileData$CellularSubscribers)
barplot(fileData$CellularSubscribers)
summary(fileData$CellularSubscribers)







