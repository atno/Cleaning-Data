
Codebook
========

Dataset of Human Activity Recognition Using Smartphones Dataset

Index
------

- Summary table
- Variables list and description
- Notes




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





Variables list and description
------------------------------
<a name="list"></a>
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
   body linear acceleration signals, measured as mean (mean) and standard deviation (std), in the directions x, y, z

tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
   gravity linear acceleration signals, measured as mean (mean) and standard deviation (std), in the directions x, y, z


tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
   body linear acceleration (Jerk signals), measured as mean (mean) and standard deviation (std), in the directions x, y, z

tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
   body angular velocity, measured as mean (mean) and standard deviation (std), in the directions x, y, z


tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
   body angular velocity (Jerk signals), measured as mean (mean) and standard deviation (std), in the directions x, y, z

tBodyAccMag-mean()
tBodyAccMag-std()
   magnitude of body linear acceleration, measured as mean (mean) and standard deviation (std)

tGravityAccMag-mean()
tGravityAccMag-std()
   magnitude of gravity linear acceleration, measured as mean (mean) and standard deviation (std)

tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
   magnitude of body linear acceleration (Jerk signals), measured as mean (mean) and standard deviation (std)

tBodyGyroMag-mean()
tBodyGyroMag-std()
   magnitude of body angular velocity, measured as mean (mean) and standard deviation (std)

tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
    magnitude of body angular velocity (Jerk signals), measured as mean (mean) and standard deviation (std)

fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
    Fourier Transform of the body linear acceleration signals, measured as mean (mean) and standard deviation (std), in the directions x, y, z

fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
    Fourier Transform of the body linear acceleration (Jerk signals), measured as mean (mean) and standard deviation (std), in the directions x, y, z

fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
    Fourier Transform of the body angular velocity, measured as mean (mean) and standard deviation (std), in the directions x, y, z

fBodyAccMag-mean()
fBodyAccMag-std()
    Fourier Transform of the magnitude of body linear acceleration, measured as mean (mean) and standard deviation (std)

fBodyAccJerkMag-mean()
fBodyAccJerkMag-std()
    Fourier Transform of the magnitude of body linear acceleration (Jerk signals), measured as mean (mean) and standard deviation (std)

fBodyGyroMag-mean()
fBodyGyroMag-std()
    Fourier Transform of the magnitude of body angular velocity, measured as mean (mean) and standard deviation (std)

fBodyGyroJerkMag-mean()
fBodyGyroJerkMag-std()
    Fourier Transform of the magnitude of body angular velocity (Jerk signals), measured as mean (mean) and standard deviation (std)
```





Notes
-----

data proposed here come from the original dataset proposed in [1]. Transformations performed to clean up data:

- only the measurements on the mean and standard deviation for each measurement.
- rows of the dataset are average measurement of each variable for each activity and each subject.


Use of this dataset in publications must be acknowledged by referencing the following publication:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

