
Getting and Cleaning Data: Course Project
=========================================


The objective of this work is to produce a tidy data set out of the data provided at the UCI repository: Human Activity Recognition Using Smartphones Data Set - a data set built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


This repository contains:
- the R script used to produce the tidy dataset
- a CodeBook describing the variables in the dataset





About the script
----------------

The R script named run_analysis.R  implements all the steps needed to produce the tidy dataset. 
NOTE: Make sure to have write permission in the directory containing the script and to have a working internet connection to download the data.

The script will do the following:
- download data from the UCI repository
- unzip the data in the script directory
- merge train and test set to create one data set
- select the mean and standard deviation for each measurement, reject all other metrics
- assign descriptive activity-names
- correct inconsistency in the descriptive variable names
- reshape data, average measurements for each activity and subject
- store the dataset in csv format


How to run the script
---------------------
- copy the script 'run_analysis.R' in a directory of your choice on your system
- open R console and execute the following commands

```
 setwd(<script_dir>)   # replace <script_dir> with the script directory on your system
 source('run_analysis.R')
```

NOTE: if internet connection is not available, just place the data folder named 'UCI_HAR_Dataset.zip' in the script directory. The script will skip the data download step.



