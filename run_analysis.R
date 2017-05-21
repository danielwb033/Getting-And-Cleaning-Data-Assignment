## install package "downloader":
install.packages("downloader")
library(downloader)

## create data directory (if not exists):
if(!file.exists("./data")){dir.create("./data")}

## Url of zip file:
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## download zip file:
download.file(fileUrl,destfile = "./data/datasetweek4.zip",mode="wb")

## unzip file:
unzip(zipfile = "./data/datasetweek4.zip",exdir="./data")

## Reading training tables:
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

## Reading testing tables:
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## Reading features and activities tables:
features <- read.table("./data/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## Merge train and test sets to create one set:
x_data<-rbind(x_test,x_train)
y_data<-rbind(y_test,y_train)
subject_data<-rbind(subject_test,subject_train)

## Getting the measurements on the mean and standard deviation for each measurement: 
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[, mean_and_std_features]
names(x_data) <- features[mean_and_std_features, 2]

## Use descriptive activity names to name the activities in the data set:
y_data[, 1] <- activity_labels[y_data[, 1], 2]
names(y_data) <- "activity"

## Appropriately label the data set with descriptive variable names:
names(subject_data) <- "subject"

## Merge all data in a single data set:
single_data_set <- cbind(x_data, y_data, subject_data)

## create a second, independent tidy data set with the average of each variable for each activity and each subject:
second_data_set<-aggregate(single_data_set[,1:66],list(activities = single_data_set$activity, subjects=single_data_set$subject),mean, na.rm=TRUE)
write.table(second_data_set, "tidy_data_set.txt", row.name=FALSE)
