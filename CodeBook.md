# The CodeBook

This document describes the variables, the data in general and any transformations or work to clean up the data from UC Machine Learning Repository: "Human Activity Recognition Using Smartphone Data Set" into a tidy  merged and labeled datasets (tidydata.txt).

This repository was my submission for Coursera class project: "Getting and Cleaning Data" hold by Johns Hopkins Bloomberg School of Public Health.

## Files Included

* `run_analysis.R` The main script.
* `CodeBook.md` this file.
* `tidydata.txt` the tidy data that has been processed from data source through `run_analysis.R` R script.
* `colnames.txt` column names for `tidydata.txt`.

## Using the Script

"run_analysis.R" is a R-script which conduct the data source downloading and transformation process. This script can be invoked from R by inputting these two commands inside R's interactive terminal (be sure to change the working directory correctly) :

    source('run_analysis.R')
    thedata <- run_analysis()


## Data Source and Transformation Process

The data source were taken from http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip.

The run_analysis() function script will download the appropriate file if invoked. The process of transforming the data source into tidy data are following:

- Get the `test/X_test.txt` into a initial variable.
- Label the column names of the data based from `features.txt`.
- Select only some columns which have "-mean" and "-std" on its name using grep.
- Add a column for label from `test/y_test.txt`.
- Transform the label variable from a numeric into a factor based from `activity_labels.txt`.
- Add a column for subject from `test/subject_txt`.
- Do the same step for "train" data and combine it with current data.

To simplify the code, I have created a `get_data(type = character)` function to prevent rewriting the same code over-and-over again.

## Variable List

Here is all variables which present inside the tidy data:

* "tBodyAcc-mean()-X"
* "tBodyAcc-mean()-Y"
* "tBodyAcc-mean()-Z"
* "tBodyAcc-std()-X"
* "tBodyAcc-std()-Y"
* "tBodyAcc-std()-Z"
* "tGravityAcc-mean()-X"
* "tGravityAcc-mean()-Y"
* "tGravityAcc-mean()-Z"
* "tGravityAcc-std()-X"
* "tGravityAcc-std()-Y"
* "tGravityAcc-std()-Z"
* "tBodyAccJerk-mean()-X"
* "tBodyAccJerk-mean()-Y"
* "tBodyAccJerk-mean()-Z"
* "tBodyAccJerk-std()-X"
* "tBodyAccJerk-std()-Y"
* "tBodyAccJerk-std()-Z"
* "tBodyGyro-mean()-X"
* "tBodyGyro-mean()-Y"
* "tBodyGyro-mean()-Z"
* "tBodyGyro-std()-X"
* "tBodyGyro-std()-Y"
* "tBodyGyro-std()-Z"
* "tBodyGyroJerk-mean()-X"
* "tBodyGyroJerk-mean()-Y"
* "tBodyGyroJerk-mean()-Z"
* "tBodyGyroJerk-std()-X"
* "tBodyGyroJerk-std()-Y"
* "tBodyGyroJerk-std()-Z"
* "tBodyAccMag-mean()"
* "tBodyAccMag-std()"
* "tGravityAccMag-mean()"
* "tGravityAccMag-std()"
* "tBodyAccJerkMag-mean()"
* "tBodyAccJerkMag-std()"
* "tBodyGyroMag-mean()"
* "tBodyGyroMag-std()"
* "tBodyGyroJerkMag-mean()"
* "tBodyGyroJerkMag-std()"
* "fBodyAcc-mean()-X"
* "fBodyAcc-mean()-Y"
* "fBodyAcc-mean()-Z"
* "fBodyAcc-std()-X"
* "fBodyAcc-std()-Y"
* "fBodyAcc-std()-Z"
* "fBodyAcc-meanFreq()-X"
* "fBodyAcc-meanFreq()-Y"
* "fBodyAcc-meanFreq()-Z"
* "fBodyAccJerk-mean()-X"
* "fBodyAccJerk-mean()-Y"
* "fBodyAccJerk-mean()-Z"
* "fBodyAccJerk-std()-X"
* "fBodyAccJerk-std()-Y"
* "fBodyAccJerk-std()-Z"
* "fBodyAccJerk-meanFreq()-X"
* "fBodyAccJerk-meanFreq()-Y"
* "fBodyAccJerk-meanFreq()-Z"
* "fBodyGyro-mean()-X"
* "fBodyGyro-mean()-Y"
* "fBodyGyro-mean()-Z"
* "fBodyGyro-std()-X"
* "fBodyGyro-std()-Y"
* "fBodyGyro-std()-Z"
* "fBodyGyro-meanFreq()-X"
* "fBodyGyro-meanFreq()-Y"
* "fBodyGyro-meanFreq()-Z"
* "fBodyAccMag-mean()"
* "fBodyAccMag-std()"
* "fBodyAccMag-meanFreq()"
* "fBodyBodyAccJerkMag-mean()"
* "fBodyBodyAccJerkMag-std()"
* "fBodyBodyAccJerkMag-meanFreq()"
* "fBodyBodyGyroMag-mean()"
* "fBodyBodyGyroMag-std()"
* "fBodyBodyGyroMag-meanFreq()"
* "fBodyBodyGyroJerkMag-mean()"
* "fBodyBodyGyroJerkMag-std()"
* "fBodyBodyGyroJerkMag-meanFreq()"
* "label"
* "subject"



