The raw data of this data set is "Human Activity Recognition Using Smartphones Dataset".(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
Train and test data sets (subject, X and y)are merged as the illustration in "David's project FAQ".(https://class.coursera.org/getdata-007/forum/thread?thread_id=49)

The variables including "mean()" or "std()" are extracted as well as the two variables describing activities and subjects(data in y_test, y_train, subject_test, subject_train).

After renamed, the new data set with the average of each variable for each activity and each subject are created. The name of the new data set is "Human_Activity_Mean".

The variables in the new data set are:

Subject: The subject who performed the activity for each window sample. Its range is from 1 to 30.
Activity: The activity performed. There are six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

And the mean of mean or standard deviation of feature vector for each pattern:

The name of variables include either "Time" or "Frequency", and either "Mean" or "Std". There are X, Y and Z directions. Take variables involving Time, Mean and X as an example. For "Frequency" case, just replace the "in time domain" in interpretation by "in frequency domain". For "Std" case, just replace the "mean" in interpretation by "standard deviation". The interpretation of variables involving Y and Z is similar.

Since all of the features in raw data are normalized and bounded within [-1,1], the following variables are bounded within [-1,1] and have no unit.

TimeBodyAccelerometerMeanX: The average of the mean of body signals in time domain in the X direction from accelerometer.

TimeGravityAccelerometerMeanX: The average of the mean of gravity signals in time domain in the X direction from accelerometer.

TimeBodyAccelerometerJerkMeanX: The average of the mean of body Jerk signals in time domain in the X direction from accelerometer.

TimeBodyGyroscopeMeanX: The average of the mean of body signals in time domain in the X direction from gyroscope.

TimeBodyGyroscopeJerkMeanX: The average of the mean of body Jerk signals in time domain in the X direction from gyroscope.

TimeBodyAccelerometerMagMean: The average of the mean of the magnitude of these three-dimensional body signals in time domain from accelerometer.

TimeGravityAccelerometerMagMean: The average of the mean of the magnitude of these three-dimensional gravity signals in time domain from accelerometer.

TimeBodyAccelerometerJerkMagMean: The average of the mean of the magnitude of these three-dimensional body Jerk signals in time domain from accelerometer.

TimeBodyGyroscopeMagMean: The average of the mean of the magnitude of these three-dimensional body signals in time domain from gyroscope.

TimeBodyGyroscopeJerkMagMean: The average of the mean of the magnitude of these three-dimensional body Jerk signals in time domain from gyroscope.

Note: The following variables are not included in the new data set since they are not measurements on the mean and standard deviation for any measurement:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
