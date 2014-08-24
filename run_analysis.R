# Tidy dataset script
# 
# You should create one R script called run_analysis.R that does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
# -----------------------------------------------------------------------------------------

library(reshape2)

# download the data and unzip all files 
fileUrl = 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'    
mydestFile = 'UCI_HAR_Dataset.zip'

if( ! file.exists(mydestFile) )
{    download.file(fileUrl, destfile=mydestFile )
}
fileList <- unzip(mydestFile)

# load data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors=FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors=FALSE)
s_train <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors=FALSE)

x_test  <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors=FALSE)
y_test  <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors=FALSE)
s_test <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors=FALSE)

features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
activityNames <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)



#------------------------------------------------------------------------------
# 1. Merges the training and the test sets to create one data set.
train = cbind( s_train, y_train, x_train )
test  = cbind( s_test, y_test, x_test )
data = rbind( train, test)

# set columns name
names(data) <- c( 'subject', 'activity', features[,2] )

# check correctness
unique(data[,'subject'])   # subj range in 1:30
unique(data[,'activity'])  # activity range in  1:6


#------------------------------------------------------------------------------
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# a logical vector selecting only columns corresponding to mean() and std() measurements
col_label_mean <- sapply( names(data), function(x) gregexpr(pattern ='mean\\(\\)', x)[[1]][1] > 0 )
col_label_str  <- sapply( names(data), function(x) gregexpr(pattern ='std\\(\\)', x)[[1]][1] > 0 )
col_label <- col_label_mean | col_label_str
col_label["subject"] <- T
col_label['activity'] <- T

# data2 is a copy of data containing selected columns
data2 <- data[,col_label]

# check
names( data2 )


#------------------------------------------------------------------------------
# 3. Uses descriptive activity names to name the activities in the data set
data2$activity = sapply( data2[,'activity'], function(x) activityNames[x,2]  )

# check
unique(data2$activity)


#------------------------------------------------------------------------------
# 4. Appropriately label the data set with descriptive variable names. 

# fix names of columns from 63 to 68, "fBodyBodyAccJerkMag-mean()"  to  "fBodyAccJerkMag-mean()" 
names(data2)[63:68] <- c("fBodyAccJerkMag-mean()", "fBodyAccJerkMag-std()", "fBodyGyroMag-mean()", "fBodyGyroMag-std()", "fBodyGyroJerkMag-mean()", "fBodyGyroJerkMag-std()")
names(data2)




#------------------------------------------------------------------------------
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject

# melt datast
varsLabels <- names( data2 )[ c(-1,-2)]
data2Melt <- melt(data2, id=c("subject","activity"), measure.vars=varsLabels)
head( data2Melt)

# dcast and compute mean of variables
data3 <- dcast( data2Melt, subject + activity ~ variable, mean)

# save data on csv file 
write.csv( data3, 'activity_subj_dataset_step5.csv', row.names=FALSE )


