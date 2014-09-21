library(reshape2)
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "./data/Human_Activity.zip")
unzip("./Human_Activity.zip")

#### Read and Merge data #######

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testData <- cbind(cbind(X_test, y_test), subject_test)

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainData <- cbind(cbind(X_train, y_train), subject_train)

DataSet <- rbind(trainData, testData)


#### Extract measurements #######

measurements <- read.table("./UCI HAR Dataset/features.txt")
measurements <- measurements[grepl("mean()", measurements$V2, fixed = T) 
                             | grepl("std()", measurements$V2, fixed = T),]  # Extracts the measurements about mean and standard deviation

DataFiltered <- DataSet[,c(measurements$V1, 562, 563)]
names(DataFiltered) <- measurements$V2
names(DataFiltered)[c(67, 68)] <- c("Activity", "Subject")


#### Use descriptive activity names #######

DataFiltered$y <- as.factor(DataFiltered$y)
levels(DataFiltered$y) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")


#### Label the data #######

names(DataFiltered) <- sub("tBody", "TimeBody", names(DataFiltered))
names(DataFiltered) <- sub("tGravity", "TimeGravity", names(DataFiltered))
names(DataFiltered) <- sub("fBody", "FrequencyBody", names(DataFiltered))
names(DataFiltered) <- sub("fGravity", "FrequencyGravity", names(DataFiltered))
names(DataFiltered) <- sub("Acc", "Accelerometer", names(DataFiltered))
names(DataFiltered) <- sub("Gyro", "Gyroscope", names(DataFiltered))
names(DataFiltered) <- sub("-mean()", "Mean", names(DataFiltered))
names(DataFiltered) <- sub("-std()", "Std", names(DataFiltered))
names(DataFiltered) <- sub("-", "", names(DataFiltered))
names(DataFiltered) <- sub("\\(|\\)", "", names(DataFiltered))


#### Create new data set ######

newData <- ddply(DataFiltered,.(Subject, Activity), numcolwise(mean))
write.table(newData, "./data/Human_Activity_Mean.txt", row.name=FALSE)
