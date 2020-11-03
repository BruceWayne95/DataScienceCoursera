

Using run_analysis.R, messy UCI dataset will be converted into a tidy data set.

Following are the first two variables in the tidy data set:

Subject - There are total 30 subjects. Each is denoted by numbers 1-30.
Activity - Each of the subject has data for 6 activities namely, walking, walking_upstairs, walking_downstairs, sitting, standing and laying.

The original messy data had raw acceleromater (variables having tBodyAcc/fBodyAcc, t = time and f = frequency) and gyroscope (variables having tBodyGyro/fBodyGyro, t = time and f = frequency) 3-axial raw signal outputs for each subject and activity.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The remaining variables in the tidy data set are:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Each of the above variable has a mean and standard deviation variant. Also, from the above variables, whichever has XYZ as a part of its name, further has a mean and standard deviation variant in X, Y and Z directions.
