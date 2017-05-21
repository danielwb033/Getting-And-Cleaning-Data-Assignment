## For the Getting-And-Cleaning-Data-Assignment the original dataset (as described below) is used to create a second tidy data set:

 -  The training and the test sets are merged to create one data set.
 -  Only the measurements on the mean and standard deviation are extracted for each measurement.
 -  Descriptive activity names are used to name the activities in the data set.
 -  Appropriately labels the data set with descriptive variable names.
 -  From the data set in step 4, is a second, independent tidy data set created with the average of each variable for each 
    activity and each subject.

## The original dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

## The following files are available for the train and test data. Their descriptions are equivalent:

- 'train/subject_train.txt': 
   Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
   
- 'train/Inertial Signals/total_acc_x_train.txt': 
   The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. 
   The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
   
- 'train/Inertial Signals/body_acc_x_train.txt': 
   The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
   
- 'train/Inertial Signals/body_gyro_x_train.txt': 
   The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

## Notes: 
-  Features are normalized and bounded within [-1,1].
-  Each feature vector is a row on the text file.
-  The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
-  The gyroscope units are rad/seg.
-  A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

For more information about this dataset please contact: activityrecognition '@' smartlab.ws
