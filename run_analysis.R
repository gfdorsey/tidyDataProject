## Coursera / Johns Hopkins
## Data Science
## 03 Getting and Cleaning Data
##
## George F. Dorsey, Jr.
##
## Project 1


## 0: Packages Used ####################################################
require(dplyr)

## 1: Read Data ########################################################
## The script assumes that the data from the UCI Machine Learning
## library have been unzipped into a folder called dataset in the
## same directory as the script.

subject.test <- read.table("dataset/test/subject_test.txt")
x.test <- read.table("dataset/test/X_test.txt")
y.test <- read.table("dataset/test/y_test.txt")

subject.train <- read.table("dataset/train/subject_train.txt")
x.train <- read.table("dataset/train/X_train.txt")
y.train <- read.table("dataset/train/y_train.txt")


## 2: Merge Test and Train #############################################
## Partially satisfies requirement 1.  The three sets will be
## completely merged after requirements 2-4 are satisfied.
subject <- rbind(subject.test,subject.train)
x <- rbind(x.test, x.train)
y <- rbind(y.test, y.train)
rm(subject.test, subject.train, x.test, x.train, y.test, y.train)


## 3: Name Columns for 'X' Set #########################################
## Obtains the column names from the features.txt file and changes
## them to meaningful values before setting the column names
## of the data frame.
## This satisfies requirment 4 for the 'X' set.

features <- read.table("dataset/features.txt")
x.colnames <- as.vector(sapply(features[2], function(x) {
    # fix a small problem with some of the feature names
    x <- sub("BodyBody", "Body", x)
    
    # convert to meaningful human readable names
    x <- sub("tBodyAcc", "bodyAccelerometerSignal", x)
    x <- sub("fBodyAcc", "bodyAccelerometerFFT", x)
    x <- sub("tGravityAcc", "gravityAccelerometerSignal", x)
    x <- sub("tBodyGyro", "bodyGyroscopeSignal", x)
    x <- sub("fBodyGyro", "bodyGyroscopeFFT", x)
    x <- sub("Mag", "Magnitude", x)
    x <- sub("mean\\(\\)", "Mean", x)
    x <- sub("std\\(\\)", "StandardDeviation", x)
    # all other functions, and angle, will not be selected,
    # so they are skipped
    
    # remove punctuation
    x <- gsub("[^A-Za-z0-9]", "", x)
    x
}))

colnames(x) <- x.colnames

## 4: Select Relevant Columns ##########################################
## Selects the relevant columns, namely any containing Mean
## (formerly mean()) and StandardDeviation (formerly std()),
## ignoring the "angle" variables which are not relevant for
## this analysis.  Satisfies requirement 2

selector1 = !grepl("angle", x.colnames)
selector2 = grepl("Mean|StandardDeviation", x.colnames)
x <- x[,selector1 & selector2]
rm(features, x.colnames, selector1, selector2)

## 5: Convert 'y' Set to Descriptive Names #############################
## Satisfies requirment 3.
## Uses activity labels file, after converting to camelCase and
## making "LAYING" clearer about its purpose.

activity.labels <- read.table("dataset/activity_labels.txt")
y.values <- sapply(activity.labels, function(x) {
    x <- tolower(x)
    x <- sub("_", " ", x)
    x <- sub("laying", "lying down", x)
    x
})
y <- sapply(y, function(x) {
    x <- y.values[x,2]
})
rm(activity.labels, y.values)


## 6: Set Remaining Column Names and Complete Merge ####################
## Completes requirments 1 and 4.

colnames(y) <- "activity"
colnames(subject) <- "subjectID"

combined.data <- cbind(subject, y, x)
combined.data <- arrange(combined.data, subjectID, activity)
rm(subject, y, x)


## 7: Calculate Column Means by Subject and Activity ###################
## Implements step 5
## It works.  Looking forward to finding a less brute force method, but
## have to time to do so.

tmp <- split(combined.data, combined.data$subjectID)
tmp2 <- lapply(tmp, function(x) {
    tmp.x <- split(x, x$activity)
    list <- lapply(tmp.x, function(y) {
        colMeans(y[,3:68])
    })
    list
})

names <- colnames(combined.data)
mean.data <- data.frame()
for (i in 1:30) {
    tmp3 <- data.frame()
    for (j in 1:6) {
        tmp3 <- rbind(tmp3, tmp2[[i]][[j]])
    }
    tmp3 <- cbind(rep(i,6),attributes(tmp2[[1]])$names,tmp3)
    colnames(tmp3) <- names
    mean.data <- rbind(mean.data,tmp3)
}
rm(tmp, tmp2, tmp3, i, j, names, combined.data)

## 8: Writes Tidy Data File ############################################
## Finally, writes the data file to the working directory
## as tidydata.txt.

write.table(mean.data, "tidydata.txt", row.names = FALSE)

