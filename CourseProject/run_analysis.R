# This is the R script that clean and merge the data sets 

setwd("C:/Users/kgaspic.COMPING/Documents/COURSERA/Getting and cleaning data/week4/getting-and-cleaning-data/CourseProject")

require("data.table")

# downloading and reading the data
filename <- "getdata%2Fprojectfiles%2FUCI HAR Dataset.zip"

if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Load activity labels + features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Extracts only the measurements on the mean and standard deviation for each measurement.
featuresExtract <- grep(".*mean.*|.*std.*", features[,2]) #indices of features having mean and std in names

#Appropriately labels the data set with descriptive variable names.
featuresExtract.names <- features[featuresExtract,2]
featuresExtract.names = gsub('-mean', 'Mean', featuresExtract.names)
featuresExtract.names = gsub('-std', 'Std', featuresExtract.names)
featuresExtract.names <- gsub('[-()]', '', featuresExtract.names)

#train set
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresExtract]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

# test set
test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresExtract]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# Merges the training and the test sets to create one data set.
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresExtract.names)

# Uses descriptive activity names to name the activities in the data set
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
allData.melt <- melt(allData, id = c("subject", "activity"))
allData.average <- dcast(allData.melt, subject + activity ~ variable, fun=mean)
tidy <- allData.average

write.table(tidy, "tidy.txt", row.names = FALSE, quote = FALSE)

# list of variables in tidy dataset
VarNames<-as.character(names(tidy))
write.csv(VarNames,file="VarNames.csv")
