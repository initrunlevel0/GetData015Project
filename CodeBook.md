# The CodeBook

## Data Sources

The data source from this tidy data set were taken from http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip.

According to dataset information (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), The source dataset is composed from a human activity recognition using smartphone sensors experiment which was conducted by UCI. The raw dataset is multivariate and timeseries and have been labeled and noise filtered. 

The processed tidy dataset (tidydata.txt) was processed from the source dataset automatically by using an R script (run_analysis.R) by grouping all values by label and subject columns and agregating the data with mean function. Not all the columns were agregated, only some columns which have "mean()" and "std()" on its name (as per course project instruction).

## Variable Naming

There are 81 variables consisting of: two variable ("subject"" and "label") as dependent variable and 79 variables as independent or input variable. 

The input variable has a naming convention (which based from the source dataset naming convention): <signaldomain><sensorName>-<statisticalFunction>-(axis). There are two domain signal used: t for Time Domain Singal and f for Frequency Domain Signal. Furthermore, there are three statistical function used: mean, std (Standard Deviation) and meanFreq (only used in Frequency Domain Signal (f)).

Following is a list for sensor name used in the tidy dataset:

* BodyAcc
* GravityAcc
* BodyAccJerk
* BodyGyro
* BodyGyroJerk
* BodyAccMag
* GravityAccMag
* BodyAccJerkMag
* BodyGyroMag
* BodyGyroJerkMag


