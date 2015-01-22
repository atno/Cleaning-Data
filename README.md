
Getting and Cleaning Data: Course Project
=========================================

It is often said that 80% of data analysis is spent on the cleaning and preparing data.
The objective of this project is to **produce a tidy data set** and a **Code Book** to describe the data contents

The data set used here is available at the UCI repository, 'Human Activity Recognition Using Smartphones Data Set'. A data set built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


This repo contains:
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





Codebook
--------
- [Summary table](#table)
- [Variables list and description](#list)
- [Notes](#notes)



<a name="table"></a>
Summary table
-------------

A summary of the kind of varibales in the dataset. The complete list of variables and their description is [here](#list).
        
VARABLE NAME           | DESCRIPTION
-----------------------|----------------------------------------------------------------------------------
subject                | categorical variable defining the subject under test. 
activity               | A categorical variable defining the subject activity. 
tBodyAcc               | body linear acceleration signals, measured as mean (mean) and standard deviation (std), in the directions x, y, z
tGravityAcc            | gravity linear acceleration signals, measured as mean (mean) and standard deviation (std), in the directions x, y, z
tBodyAccJerk           | body linear acceleration (Jerk signals), measured as mean (mean) and standard deviation (std), in the directions x, y, z
tBodyGyro              | body angular velocity, measured as mean (mean) and standard deviation (std), in the directions x, y, z
tBodyGyroJerk-mean()   | body angular velocity (Jerk signals), measured as mean (mean) and standard deviation (std), in the directions x, y, z
tBodyAccMag            | magnitude of body linear acceleration, measured as mean (mean) and standard deviation (std)
tGravityAccMag         | magnitude of gravity linear acceleration, measured as mean (mean) and standard deviation (std)
tBodyAccJerkMag        | magnitude of body linear acceleration (Jerk signals), measured as mean (mean) and standard deviation (std)
tBodyGyroMag           | magnitude of body angular velocity, measured as mean (mean) and standard deviation (std)
tBodyGyroJerkMag       | magnitude of body angular velocity (Jerk signals), measured as mean (mean) and standard deviation (std)
fBodyAcc               | Fourier Transform of the body linear acceleration signals, measured as mean (mean) and standard deviation (std), in the directions x, y, z
fBodyAccJerk           | Fourier Transform of the body linear acceleration (Jerk signals), measured as mean (mean) and standard deviation (std), in the directions x, y, z
fBodyGyro              | Fourier Transform of the body angular velocity, measured as mean (mean) and standard deviation (std), in the directions x, y, z
fBodyAccMag            | Fourier Transform of the magnitude of body linear acceleration, measured as mean (mean) and standard deviation (std)
fBodyAccJerkMag        | Fourier Transform of the magnitude of body linear acceleration (Jerk signals), measured as mean (mean) and standard deviation (std)
fBodyGyroMag           | Fourier Transform of the magnitude of body angular velocity, measured as mean (mean) and standard deviation (std)
fBodyGyroJerkMag       | Fourier Transform of the magnitude of body angular velocity (Jerk signals), measured as mean (mean) and standard deviation (std)




<a name="list"></a>
Variables list and description
------------------------------

```
subject
   Description: A categorical variable defining the subject under test. 
   Values:      1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30

activity
   Description: A categorical variable defining the subject activity. 
   Values:      LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS


tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
   Description: body linear acceleration signals, measured as mean (mean) and 
                standard deviation (std), in the directions x, y, z

tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
   Description: gravity linear acceleration signals, measured as mean (mean) and 
                standard deviation (std), in the direc

tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Ztions x, y, z

   Description: body linear acceleration (Jerk signals), measured as mean (mean) 
                and standard deviation (std), in the directions x, y, z

tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
   Description: body angular velocity, measured as mean (mean) and standard 
                deviation (std), in the directions x, y, z


tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
   Description: body angular velocity (Jerk signals), measured as mean (mean) 
                and standard deviation (std), in the directions x, y, z

tBodyAccMag-mean()
tBodyAccMag-std()
   Description: magnitude of body linear acceleration, measured as mean (mean) 
                and standard deviation (std)

tGravityAccMag-mean()
tGravityAccMag-std()
   Description: magnitude of gravity linear acceleration, measured as mean (mean)
                and standard deviation (std)

tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
   Description: magnitude of body linear acceleration (Jerk signals), measured 
                as mean (mean) and standard deviation (std)

tBodyGyroMag-mean()
tBodyGyroMag-std()
   Description: magnitude of body angular velocity, measured as mean (mean) and 
                standard deviation (std)

tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
    Description: magnitude of body angular velocity (Jerk signals), measured as 
                 mean (mean) and standard deviation (std)

fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
    Description: Fourier Transform of the body linear acceleration signals, 
                 measured as mean (mean) and standard deviation (std), in 
                 the directions x, y, z

fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
    Description: Fourier Transform of the body linear acceleration (Jerk signals), 
                 measured as mean (mean) and standard deviation (std), in the 
                 directions x, y, z

fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
    Description: Fourier Transform of the body angular velocity, 
                 measured as mean (mean) and standard deviation (std), 
                 in the directions x, y, z

fBodyAccMag-mean()
fBodyAccMag-std()
    Description: Fourier Transform of the magnitude of body linear acceleration, 
                 measured as mean (mean) and standard deviation (std)

fBodyAccJerkMag-mean()
fBodyAccJerkMag-std()
    Description: Fourier Transform of the magnitude of body linear 
                 acceleration (Jerk signals), measured as mean (mean) 
                 and standard deviation (std)

fBodyGyroMag-mean()
fBodyGyroMag-std()
    Description: Fourier Transform of the magnitude of body angular velocity, 
                 measured as mean (mean) and standard deviation (std)

fBodyGyroJerkMag-mean()
fBodyGyroJerkMag-std()
    Description: Fourier Transform of the magnitude of body angular 
                 velocity (Jerk signals), measured as mean (mean) 
                 and standard deviation (std)
```




<a name="notes"></a>
Notes
-----

Data described here come from the original data available from this [repository](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and were published in [1]. Further information on the original dataset are available at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


Use of this dataset in publications must be acknowledged by referencing the following publication:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

