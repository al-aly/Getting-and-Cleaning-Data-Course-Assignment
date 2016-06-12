
# Data processing
# 1. Downloading and unzipped dataset
if(!file.exists("./data")){dir.create("./data")}
fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./data/Dataset.zip")

# Unzip dataset to local directory
unzip(zipfile ="./data/Dataset.zip", exdir = "./data")

#2. Merging the training and the test sets to create one data set:
# Reading files
# Reading training tables
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Reading the testing tables
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Reading the feature vector:
features <- read.table("./data/UCI HAR Dataset/features.txt")

# Reading the activity labels:
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# Assigning column names:
colnames(x_train) <- features[,2]
colnames(y_train) <- "activityId"
colnames(subject_train)<-"subjectId"

colnames(x_test) <- features[,2]
colnames(y_test) <-"activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

# Merging all data in one set:
merge_train <- cbind(y_train,subject_train,x_train)
merge_test <- cbind(y_test,subject_test,x_test)
setAllInOne <- rbind(merge_train,merge_test)

#Extracting only the measurements on the meand and standard deviation for each measurements
# Reading column names:
colnames <- colnames(setAllInOne)

#create vector for defining ID, mean and standard deviation:
mean_and_standard_dev  <- (grepl("activityId",colnames)|
                             grepl("subjectId",colnames)|
                             grepl("mean",colnames)|
                              grepl("standard_deviation",colnames)
                            )

# Making nessessary subset from setAllInOne
setForMeanAndStd <- setAllInOne[,mean_and_standard_dev ==TRUE]

# Using descriptive activity names to name the activities in the datasets:
setActivityNames <- merge(setForMeanAndStd,activityLabels,by="activityId",all.x=TRUE)

# Creating independently tidy data set with the average of each variable
# for each activity and each subject:

tidySet <-aggregate(. ~subjectId +activityId,setActivityNames,mean)
tidySet <- tidySet[order(tidySet$subjectId,tidySet$activityId),]

# writing second tidy data set in text file
write.table(tidySet,"tidySet.txt",row.name=FALSE)
