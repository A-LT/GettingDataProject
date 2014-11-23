Course Project for Getting Data class on Coursera

Project Description: Students in class were asked to combine, tidy, and run a short analysis on data from a public data set. The data was information created from persons holding their smart phones while performing different activities

Data: 
Data used in this can be retrived from the following website, 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Code Book:
Subject column = contains integers from 1 to 30. Each represent a person in the study and is the row combined files subject_train and subject_test

Activity column = contains six factors. The row combined files y_train and y_test where transformed from numbers 1 to 6 into factors of Walking, Walking_Up, Walking_Down, Standing, Sitting, Laying

Feature columns = Column 3 onward were initial combined and selected from the X_train and X_test files. They were transformed into a long tall dataframe of four columns. A mean was then performed over each feauture depending on the subject and activity and displayed in the final table.

tBodyAcc.mean...XYZ
tBodyAcc.std...XYZ
tGravityAcc.mean...	XYZ
tGravityAcc.std...	XYZ
tBodyAccJerk.mean...XYZ
tBodyAccJerk.std...
tBodyGyro.mean...
tBodyGyro.std..
tBodyGyroJerk.mean...
tBodyGyroJerk.std...
tBodyAccMag.mean..	
tBodyAccMag.std..	
tGravityAccMag.mean..	
tGravityAccMag.std..	
tBodyAccJerkMag.mean..	
tBodyAccJerkMag.std..	
tBodyGyroMag.mean..	
tBodyGyroMag.std..	
tBodyGyroJerkMag.mean..	
tBodyGyroJerkMag.std..	XYZ
fBodyAcc.mean...
fBodyAcc.std...XYZ	
fBodyAcc.meanFreq...XYZ	
fBodyAccJerk.mean...XYZ	
fBodyAccJerk.std... XYZ	
fBodyAccJerk.meanFreq...XYZ	
fBodyGyro.mean...XYZ	
fBodyGyro.std...XYZ	
fBodyGyro.meanFreq...XYZ	
fBodyAccMag.mean..	
fBodyAccMag.std..	
fBodyAccMag.meanFreq..	
fBodyBodyAccJerkMag.mean..	
fBodyBodyAccJerkMag.std..	
fBodyBodyAccJerkMag.meanFreq..	
fBodyBodyGyroMag.mean..	
fBodyBodyGyroMag.std..	
fBodyBodyGyroMag.meanFreq..	
fBodyBodyGyroJerkMag.mean..	
fBodyBodyGyroJerkMag.std..	
fBodyBodyGyroJerkMag.meanFreq

The following was taken and slighyly modified from the features_info.txt file. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
