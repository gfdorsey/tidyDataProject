# tidyDataProject
Coursera project for Getting and Cleaning Data course

## Project Purpose
Create a tidy set of summary data from various data files in the
"Human Activity Recognition Using Smartphones Data Set" on the
UC Irvine Machine Learning Repository.  

The data are available from the link supplied on the course website: 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]  


## Requirements Specified in the Project Description

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Setup and Requirements

The script requires the dplyr library, and requires that the data set referenced
above is in a directory called dataset in the same directory as the script
run_analysis.R.  

After running the script on the original data, the resulting file mean.dat can
be read back into R using:
```{r eval = FALSE}
mean.data <- read.table("mean.dat")
```
The mean.data data frame is preserved after running the run_analysis.R script,
but all other temporary variables are removed from memory.


## Script Description

### Step 1: Read the data into temporary data frames
The data from each file are loaded into a separate data frame.

### Step 2: Combine test and training data
The X, y, and subject data are combined pairwise, and the original data
are removed from memory. This paritally completes requirment 1, but it is
convenient to do more processing on the data frames _before_ the final column
bind.

### Step 3: Add column headers and make them human readable
The features.txt file provides the names of the columns, which are omitted from
the "raw" data sets (actually data originally processed by the contributor---see
the Readme.txt file in the zip file referenced above for details).  After
applying these names to the X data frame, a series of substitutions are done to
make the names more meaninful.  This fulfills requirement 4 for the X data set.

### Step 4: Select column headers
Column headers are selected if they meet the specified criteria.
The data we are interested in are only the mean() and std() summary data.  These
were renamed to ...Mean... and ...StandardDeviation... in step 3.  Because the
angle data we are not interested in also contains the string "Mean", selection
is a 2 step filter using the grepl command---once to deselect the angle data and
once to select all columns with either Mean or StandardDeviation in their names.
The logical and of these vectors produces the desired column selection vector.
This completes requirement 2.

### Step 5: Tidy the 'y' data set
To tidy the 'y' data set, the numeric factors need to be converted to
descriptive names as specified by requirement 3.  These names are found in the
activitiy_labels.txt file and are converted from VARIABLE_NAMES to readable
text.

### Step 6: Complete the merge
Column names are added to the 'y' and 'subject' data frames, and these data
frames are merged with the x data frame, completing requirements 1 and 4.  At
This point, the first 4 requirements are complete, but multiple observations
for a given pair of subject and activity need to be averaged for each of the
other variables.

### Step 7: Create the final tidy data set
Various dplyr and plyr functions were tried but did give suitable results.  A
rather brute force method was therefore used to complete the project by the
deadline.  Feedback is welcome on other approaches that would be simpler.
The data were split by subject and then each list item was further split by
activity.  Use of the `r colMeans` function then provided a vector of the 66
variables selected in step 4.  These vectors were then recombined into the final
data set.

### Step 8: Save the data
The data were saved using the `write.table` command so they could then be
retrieved later.  The mean.data data frame is also retained in memory, but
all other temporary variables are purged to save memory space.




