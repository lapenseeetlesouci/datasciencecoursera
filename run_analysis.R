# loading libraries
library(dplyr)

## 0. GETTING THE DATA 
## Hypothesis is that the Samsung data is in your working directory. 
## However, just in case it isn't, downlaod it and unzip the content

# downloading the data
raw_data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(raw_data_url, destfile = "raw_data.zip")

# expand_zip_file and remove the tmp zip file 
unzip("raw_data.zip")
file.remove("raw_data.zip")


## 1. Merge the training and the test sets to create one data set
## For X (the measures), Y (the activity) and subject (the subject id),
## merge the train and the test data.
## There is no need to keep the source (train or test) as they were randomly
## sampled. Furthermore, as long as we load them in the same order, row
## numbers are supposed to match.
## The X tables being very big, loading them is what should take the longest
## to execute

# "features.txt" contains the names of the measurements (features) in X
names_table <- read.table("UCI HAR Dataset/features.txt", col.names = c("id", "name"))

# merging measures
X_merged <- rbind(
    read.table("UCI HAR Dataset/test/X_test.txt"),
    read.table("UCI HAR Dataset/train/X_train.txt")
    )
colnames(X_merged) <- names_table[["name"]]

# merging activities
Y_merged <- rbind(
    read.table("UCI HAR Dataset/test/Y_test.txt"),
    read.table("UCI HAR Dataset/train/Y_train.txt")
    )
colnames(Y_merged) <- c("activity")

# merging subject ids
subject_merged <- rbind(
    read.table("UCI HAR Dataset/test/subject_test.txt"),
    read.table("UCI HAR Dataset/train/subject_train.txt")
    )
colnames(subject_merged) <- c("subjectid")

# finally merging them all into one dataset
fulldataset <- cbind(X_merged, Y_merged, subject_merged)


## 2. Extract only the measurements on the mean and standard deviation for each 
## measurement.

logical_vector <- c(grepl("(mean\\(\\))|(std\\(\\))", names_table[["name"]]), TRUE, TRUE)
dataset <- fulldataset[, logical_vector]


## 3. Use descriptive activity names to name the activities in the dataset

# activity names are stored in the "activity_labels.txt" file
activities <- read.table("UCI HAR Dataset/activity_labels.txt", 
                               col.names = c("id", "activity"))

dataset <- mutate(dataset, activity = factor(activity, 
                                             labels = activities[["activity"]]))

## 4. Appropriately labels the data set with descriptive variable names.

# the last two columns "activity" and "subjectid" are already properly labeled

# need to give descriptive names for the measurements columns
# step1 - no abreviations
# "Acc", "Gyro" and "Mag" stand for "accelerometer", "gyroscope" and "magnitude"
# "t" and "f" at the start stand for "time" and "frequency" values
# step2 - no special characters (dash and parenthesis here)
# step3 - Uppercases. The general guideline is no uppercases if possible. 
#       In this case, as each variable contains different words and the use of 
#       special characters is prohibited, we decided to keep only the first 
#       letter of each word (except the first one) to improve readability.
#       We need to start "mean" and "std" by an uppercase.
# step4 - we noticed, by looking at the dataset that the word 'body' was 
#       repeated by mistake in some feature names, only one is enough.

allcolnames <- names(dataset)
allcolnames <- sub("Acc", "Accelerometer", allcolnames)
allcolnames <- sub("Gyro", "Gyroscope", allcolnames)
allcolnames <- sub("Mag", "Magnitude", allcolnames)
allcolnames <- sub("^t", "time", allcolnames)
allcolnames <- sub("^f", "frequency", allcolnames)
allcolnames <- gsub("-", "", allcolnames)
allcolnames <- gsub("\\(\\)", "", allcolnames)
allcolnames <- sub("mean", "Mean", allcolnames)
allcolnames <- sub("std", "Std", allcolnames)
allcolnames <- sub("BodyBody", "Body", allcolnames)
colnames(dataset) <- allcolnames


## 5. From the data set in step 4,creates a second,independent tidy data set 
## with the average of each variable for each activity and each subject.

grp <- group_by(dataset, activity, subjectid)
dataset2 <- summarise_at(grp, allcolnames[1:(length(allcolnames) - 2)], mean)


# END -- writing the datasets into new tidy data directory
write.table(dataset2, "tidydata.txt", row.name=FALSE)
