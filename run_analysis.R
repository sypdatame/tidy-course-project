library(plyr)
library(data.table)

## Reads the features and activities data files
features <- read.table("./finalprojectdata/features.txt")
activities <- read.table("./finalprojectdata/activity_labels.txt")


## Reads, joins and labels the columns of the subject files
subject_train <- read.table("./finalprojectdata/train/subject_train.txt")
subject_test <- read.table("./finalprojectdata/test/subject_test.txt")
subjectdata <- rbind(subject_train, subject_test)
names(subjectdata) <- c("Subject")

##  Reads, joins and labels the column of the activity data files
y_train <- read.table("./finalprojectdata/train/y_train.txt")
y_test <- read.table("./finalprojectdata/test/y_test.txt")
ydata <- rbind(y_train, y_test)
names(ydata)<- c("Activity")


## Reads, joins and labels the columns of the sensor data files
x_train <- read.table("./finalprojectdata/train/X_train.txt")
x_test <- read.table("./finalprojectdata/test/X_test.txt")
xdata <- rbind(x_train, x_test)
names(xdata) <- features[ ,2]


## Merges all of the data into a single file
alldata <- cbind(subjectdata, ydata, xdata)

##  Keeps only the columns for subject, activity, means and standard deviations
tidy_data <- alldata[, grep('Subject|Activity|mean|std', names(alldata))]

##  Uses descriptive activity names to name the activities in the data set.
tidy_data$Activity <- ordered(tidy_data$Activity, levels = c(1:6), labels = activities[ ,2])

## Arranges the data file by subject and activity, to then create a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
tidy_data <- arrange(tidy_data, Subject, Activity)

data_as_table <- data.table(tidy_data)
meansdata<- data_as_table[, lapply(.SD, mean), by=c("Subject", "Activity")]
write.table(meansdata, "means_data.txt")

