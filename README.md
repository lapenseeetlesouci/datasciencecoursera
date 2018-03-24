# DESIGN STUDY

We are extracing the data from the Human Activity Recognition Using Smartphones Dataset referenced in [1].

The tidy dataset can be found in the "tidydata.txt" file.

A detailed information of the variables of our tidy dataset can be found in the 'CodeBook.md' file.


## ORIGINAL DATA INFORMATION :

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. In addition, features are normalized and bounded within [-1,1].

The original directory includes the following files that we will use:

- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'test/X_test.txt': Test set. Each feature vector is a row on the text file.
- 'test/y_test.txt': Test labels. Each feature vector is a row on the text file.
- 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


## PROCESSING STEPS

### 0. GETTING THE DATA

The assignment hypothesis is that the Samsung data is in your working directory. 

However, just in case it isn't, we download the data at the provided url.

``` 
raw_data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(raw_data_url, destfile = "raw_data.zip")
```

It is contained in a .zip file, so we have to unzip it.
```
unzip("raw_data.zip")
```

As the .zip file is no longer needed once it is unzipped, we then remove it from the working directory.
```
file.remove("raw_data.zip")
```
### 1. MERGING THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET

The actual data files are contained in the "test" and "train" directory.

Each of these directory contain the original raw measurements from the phone in an "Inertial Signal", as well as their processed version in a table X, the corresponding activities in a table y and the corresponding subject identifiers in a table subject.

For the purpose of this exercise, we are only interested in the last three of these tables. The inertial signals can be considered as the rawest data already processed into the X table.

The data has been split in two datasets (test and train, probably for machine learning applications). For our purpose, we want to merge those datasets. Therefore, we merge the two X tables, the two y tables and the two subject tables.
A simple binding of the rows is enough as the train and test datasets have corresponding columns.
We are however careful to merge all the tables in the same order (test, then train), to have a coherent order of the rows through the three tables.

While merging, we also give provisory column names, so as to already have more readable datasets.
For X, we use "features.txt", which contains the names of the measurements (features) in X. For y and subject, we already use appropriate names as we know what each table contains.
```
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
```


The next step is to merge the three tables (X, y and subject) into one. As we have kept the row order, we can do a simple column bind. We chose to merge them in that order (measurement, activity and subject), as this dataset is provisory, but we could have chosen an other order (subject, activity, measurements for example).

```
fulldataset <- cbind(X_merged, Y_merged, subject_merged)
```

Note : The X tables being very big, loading them is what should take the longest to execute

### 2. EXTRACTING ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENTS

From the features description, we understand that the values we are intered in are the ones that contain "mean()" and "std()" in their name.
Therefore, we create a logical vector to subset the dataset accordingly.

```
logical_vector <- c(grepl("(mean\\(\\))|(std\\(\\))", names_table[["name"]]), TRUE, TRUE)
dataset <- fulldataset[, logical_vector]
```


### 3. USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATASET

For now, the activities were stored as integers. A tidy tadaset would contain factor values instead.

The activity names and corresponding value are stored in the "activity_labels.txt" file. We therefore load that table, and use it to create a factor of the activity column. The mutate fonction from the dplyr library allows us to easily replace the activity column by its corresponding factor values.

```
# activity names are stored in the "activity_labels.txt" file
activities <- read.table("UCI HAR Dataset/activity_labels.txt", 
                               col.names = c("id", "activity"))

dataset <- mutate(dataset, activity = factor(activity, 
                                             labels = activities[["activity"]]))

```

### 4. APPROPRIATELY LABELING THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES

The last two columns "activity" and "subjectid" are already properly labeled, from part 1.

We now need to give descriptive names for the measurements columns

* step 1 - No abreviations : 

    -"Acc", "Gyro" and "Mag" stand for "accelerometer", "gyroscope" and "magnitude"

    -"t" and "f" at the start stand for "time" and "frequency" values
    
```
allcolnames <- names(dataset)
allcolnames <- sub("Acc", "accelerometer", allcolnames)
allcolnames <- sub("Gyro", "gyroscope", allcolnames)
allcolnames <- sub("Mag", "magnitude", allcolnames)
allcolnames <- sub("^t", "time", allcolnames)
allcolnames <- sub("^f", "frequency", allcolnames)
```

NOTE: We did not consider "std" as an abreviation, as it is at least as much used as the proper "standard deviation" expression.

* step 2 - No special characters (dash and parenthesis here)

```
allcolnames <- gsub("-", "", allcolnames)
allcolnames <- gsub("\\(\\)", "", allcolnames)
```

* step 3 - Uppercases: The general guideline is to keep no uppercases if possible. In this case, as each variable contains different words and the use of special characters is prohibited, we decided to keep only the first letter of each word (except the first one) to improve readability. We need to start "mean" and "std" by an uppercase.

```
allcolnames <- sub("mean", "Mean", allcolnames)
allcolnames <- sub("std", "Std", allcolnames)
```

* step 4 - In addition, we noticed, by looking at the dataset that the word 'body' was repeated by mistake in some feature names, only one is enough

```
allcolnames <- sub("bodybody", "body", allcolnames)
colnames(dataset) <- allcolnames
```

NOTE : The variable names are composed of a lot of words giving information on the treatment process that yielded them. The result is that variable names need to be long and maybe considered ugly, but they need to be in order to be explicit.


### 5. CREATING A TIDY DATASET WITH THE AVERAGE OF EACH MEASUREMENTS FOR EACH ACTIVITY AND SUBJECT

Using the dplyr library, we group the dataset by activity and subject.
The summarize_at function then allows us to create a dataset with the mean of each measurement values for each group.

```
grp <- group_by(dataset, activity, subjectid)
dataset2 <- summarise_at(grp, allcolnames[1:(length(allcolnames) - 2)], mean)
```

This new dataset is tidy, as :

- each variable measured is in one column
- each observation of these variables is in one row
- the dataset is comprised of a unique table containing only one "kind" of variables.

The last step is to write this new dataset in a "tidydata.txt" file.

```
write.table(dataset2, "tidydata.txt", row.name=FALSE)
```

## NOTE : LICENSE

Use of the original dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
