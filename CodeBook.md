###Code book for output data set created by run_analysis.R script.

For each record in the dataset it is provided: 
- An identifier of the subject who carried out the experiment.
- Activity label.
- Mean and standard deviation of triaxial acceleration from the accelerometer.
- Mean and standard deviation of triaxial angular velocity from the gyroscope. 
- Mean and standard deviation of Jerk signals and magnitude.

Field Name                  Type        Values or explanation     Variable

 subject_id                 : int       1:30                      An identifier of the subject who carried out the experiment
 activity_label             : Factor                              Activity label
                                        WALKING
                                        WALKING_UPSTAIRS
                                        WALKING_DOWNSTAIRS
                                        SITTING
                                        STANDING
                                        LAYING
                                        
The output data set contains the average of selected variables (only the measurements on the mean and standard deviation for each measurement was extracted) for each activity and each subject (see README.txt to read about analysis script).
The pattern is as follows:
- prefix 't' to denote time or prefix f' to indicate frequency domain signals
- body (BodyAcc), gyroscope (BodyGyro) and gravity (GravityAcc) acceleration signals
- Jerk signals (Jerk) or magnitude (Mag)
- mean(): Mean value or std(): Standard deviation
- 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The acceleration signal from the smartphone accelerometer in standard gravity units 'g'.
The angular velocity vector measured by the gyroscope in units radians/second. 

Values of futures in input data set and in output tidy data set are normalized and bounded within [-1,1].

Field Name                  Type    

 tBodyAcc-mean()-X          : num       
 tBodyAcc-mean()-Y          : num  
 tBodyAcc-mean()-Z          : num  
 tBodyAcc-std()-X           : num  
 tBodyAcc-std()-Y           : num  
 tBodyAcc-std()-Z           : num  
 tGravityAcc-mean()-X       : num  
 tGravityAcc-mean()-Y       : num  
 tGravityAcc-mean()-Z       : num 
 tGravityAcc-std()-X        : num  
 tGravityAcc-std()-Y        : num 
 tGravityAcc-std()-Z        : num  
 tBodyAccJerk-mean()-X      : num  
 tBodyAccJerk-mean()-Y      : num  
 tBodyAccJerk-mean()-Z      : num  
 tBodyAccJerk-std()-X       : num  
 tBodyAccJerk-std()-Y       : num  
 tBodyAccJerk-std()-Z       : num  
 tBodyGyro-mean()-X         : num  
 tBodyGyro-mean()-Y         : num  
 tBodyGyro-mean()-Z         : num  
 tBodyGyro-std()-X          : num  
 tBodyGyro-std()-Y          : num  
 tBodyGyro-std()-Z          : num  
 tBodyGyroJerk-mean()-X     : num  
 tBodyGyroJerk-mean()-Y     : num  
 tBodyGyroJerk-mean()-Z     : num  
 tBodyGyroJerk-std()-X      : num  
 tBodyGyroJerk-std()-Y      : num  
 tBodyGyroJerk-std()-Z      : num  
 tBodyAccMag-mean()         : num  
 tBodyAccMag-std()          : num  
 tGravityAccMag-mean()      : num  
 tGravityAccMag-std()       : num  
 tBodyAccJerkMag-mean()     : num  
 tBodyAccJerkMag-std()      : num  
 tBodyGyroMag-mean()        : num  
 tBodyGyroMag-std()         : num  
 tBodyGyroJerkMag-mean()    : num 
 tBodyGyroJerkMag-std()     : num  
 fBodyAcc-mean()-X          : num  
 fBodyAcc-mean()-Y          : num  
 fBodyAcc-mean()-Z          : num  
 fBodyAcc-std()-X           : num  
 fBodyAcc-std()-Y           : num  
 fBodyAcc-std()-Z           : num  
 fBodyAccJerk-mean()-X      : num  
 fBodyAccJerk-mean()-Y      : num  
 fBodyAccJerk-mean()-Z      : num  
 fBodyAccJerk-std()-X       : num  
 fBodyAccJerk-std()-Y       : num  
 fBodyAccJerk-std()-Z       : num  
 fBodyGyro-mean()-X         : num  
 fBodyGyro-mean()-Y         : num  
 fBodyGyro-mean()-Z         : num  
 fBodyGyro-std()-X          : num 
 fBodyGyro-std()-Y          : num  
 fBodyGyro-std()-Z          : num 
 fBodyAccMag-mean()         : num  
 fBodyAccMag-std()          : num  
 fBodyBodyAccJerkMag-mean() : num  
 fBodyBodyAccJerkMag-std()  : num 
 fBodyBodyGyroMag-mean()    : num  
 fBodyBodyGyroMag-std()     : num  
 fBodyBodyGyroJerkMag-mean(): num  
 fBodyBodyGyroJerkMag-std() : num  