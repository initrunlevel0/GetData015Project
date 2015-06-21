# README

This document describes the variables, the data in general and any transformations or work to clean up the data from UC Machine Learning Repository: "Human Activity Recognition Using Smartphone Data Set" into a tidy  merged and labeled datasets (tidydata.txt).

This repository was my submission for Coursera class project: "Getting and Cleaning Data" hold by Johns Hopkins Bloomberg School of Public Health.

## Files Included

* `run_analysis.R` The main script.
* `CodeBook.md` this file.
* `tidydata.txt` the first tidy data without aggregation.
* `tidydata2.txt` the second tidy data with mean aggregation grouped by subject and label.
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
- Save the data into `tidydata.txt`
- Do a mean aggregation with subject and label as grouping columns, save it into `tidydata2.txt`.

To simplify the code, I have created a `get_data(type = character)` function to prevent rewriting the same code for the first seven steps.

