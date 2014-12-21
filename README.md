Getting and Cleaning Data - Course Project
======================

This repository contains one script: run_analysis.R. This script perform analysis on data collected from the accelerometers from the Samsung Galaxy S smartphone and write tidy data set to tidy.txt file.

Here are the data used in the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Repository contains tidy data set (tidy.txt) for data used in the project.

The script requires Samsung data in your working directory.

The R script (run_analysis.R) does the following:

- Appropriately labels the data set with descriptive variable names. 
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Merges the training and the test sets to create one data set.
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Write created tidy data set to the file (tidy.txt)

Code book describing the variables is in file: CodeBook.md