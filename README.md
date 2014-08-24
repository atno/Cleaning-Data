
Getting and Cleaning Data: Course Project
=========================================

Introduction
-------------

The objective of this work is to produce a tidy data set out of a data set provided from the UCI repository(*).

This repository contains:
- the R script used to produce the tidy dataset
- a CodeBook describing the variables in the dataset


(*) Human Activity Recognition Using Smartphones Data Set 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



About the script
----------------

to produce the tidy dataset, run the R script named run_analysis.R 
Make sure to have write permission in the directory containing the script and to have a working internet connection.

The script will do the following:
- download data from the UCI repository
- unzip the data in the script base directory
- merge train and test set to create one data set
- extract only the measurements on the mean and standard deviation for each measurement
- use descriptive activity names to name the activities in the data set
- correct inconsistency in the descriptive variable names
- create a tidy data set with the average of each variable for each activity and each subject
- store in the script base directory the dataset in csv format


How to run the script
---------------------
- copy the script 'run_analysis.R' in your local directory. 
- open R ....
- give the following commands setwd(<localDir>), replacing the <localDir> with the R script local directory

 setwd(<localDir>)
 source('run_analysis.R')

NOTE: if internet connection is not available it's sufficient place the data folder named 'UCI_HAR_Dataset.zip' in the script base directory.
The script will check the file existence and skip the download step.

