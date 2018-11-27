# Codebook

  This code book indicates all the variables and summaries calculated, along with units, and any other relevant 
  information for "tidydataset.txt" which is the final result of the R script "run_analysis.R", both part of this
  repository.
  
  Chapters:
  1) Original README description
  2) Original feature description
  3) Description of "tidydataset.txt"

  The first two chapters are copied from the original "README.txt" and "features_info.txt" files from the orginal dataset 
  derived from:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
  This is done to give a clear overview of the orignal dataset and its variables, which is used as a base for chapter 3.
  
  Consequently in chapter 3) the variables and summaries calculated for the "tidydataset.txt" are explained with references
  to the first two chapters.

  # 1) Original README.txt description:
  
    The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

    The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

    For each record it is provided:
    ======================================

    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    - Triaxial Angular velocity from the gyroscope. 
    - A 561-feature vector with time and frequency domain variables. 
    - Its activity label. 
    - An identifier of the subject who carried out the experiment.

    The dataset includes the following files:
    =========================================

    - 'README.txt'

    - 'features_info.txt': Shows information about the variables used on the feature vector.

    - 'features.txt': List of all features.

    - 'activity_labels.txt': Links the class labels with their activity name.

    - 'train/X_train.txt': Training set.

    - 'train/y_train.txt': Training labels.

    - 'test/X_test.txt': Test set.

    - 'test/y_test.txt': Test labels.

    The following files are available for the train and test data. Their descriptions are equivalent. 

    - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

    - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

    - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

    - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

    Notes: 
    ======
    - Features are normalized and bounded within [-1,1].
    - Each feature vector is a row on the text file.

    For more information about this dataset contact: activityrecognition@smartlab.ws

    License:
    ========
    Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

    [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

    This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

    Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
  
  # 2) The Original feature.txt description:

    Feature Selection 
    =================

    The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
    These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using 
    a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, 
    the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
    using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ 
    and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
    (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

    Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
    fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

    These signals were used to estimate variables of the feature vector for each pattern:  
    '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

    The set of variables that were estimated from these signals are: 

    mean(): Mean value
    std(): Standard deviation
    mad(): Median absolute deviation 
    max(): Largest value in array
    min(): Smallest value in array
    sma(): Signal magnitude area
    energy(): Energy measure. Sum of the squares divided by the number of values. 
    iqr(): Interquartile range 
    entropy(): Signal entropy
    arCoeff(): Autorregresion coefficients with Burg order equal to 4
    correlation(): correlation coefficient between two signals
    maxInds(): index of the frequency component with largest magnitude
    meanFreq(): Weighted average of the frequency components to obtain a mean frequency
    skewness(): skewness of the frequency domain signal 
    kurtosis(): kurtosis of the frequency domain signal 
    bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
    angle(): Angle between to vectors.

    Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

    gravityMean
    tBodyAccMean
    tBodyAccJerkMean
    tBodyGyroMean
    tBodyGyroJerkMean

    The complete list of variables of each feature vector is available in 'features.txt'

# 3) Description of "tidydataset.txt"

     The tidy data set contains the following variables:
     
     1) activity
        Description: 
        This variable contains of the six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
        SITTING, STANDING, LAYING) that were exectued by the volunteers wearing a smartphone (Samsung Galaxy S II) on the waist.
        
        Class = factor
        Range = 1-6
     
     2) subject
        Description:
        The subject provides a numeric value of the subject ID which stands for one of the 30 volunteers as described above in 
        the original README, chapter 1.
     
        Class = integer
        Range = 1-30
        
     3) measurement
        Description:
        This variable contains the features as described in the original "feature.txt", chapter 2, with the set of variables that 
        were estimated from only the two signals: 

        mean(): Mean value
        std(): Standard deviation
    
        The names of the features are adjusted as described in the README.md of this repository.
    
        Class = character
        Range = 1-66, total list as per below:
        
        1	  tBodyAccmeanX
        2	  tBodyAccmeanY
        3	  tBodyAccmeanZ
        4	  tBodyAccstdX
        5	  tBodyAccstdY
        6	  tBodyAccstdZ
        7	  tGravityAccmeanX
        8	  tGravityAccmeanY
        9	  tGravityAccmeanZ
        10	tGravityAccstdX
        11	tGravityAccstdY
        12	tGravityAccstdZ
        13	tBodyAccJerkmeanX
        14	tBodyAccJerkmeanY
        15	tBodyAccJerkmeanZ
        16	tBodyAccJerkstdX
        17	tBodyAccJerkstdY
        18	tBodyAccJerkstdZ
        19	tBodyGyromeanX
        20	tBodyGyromeanY
        21	tBodyGyromeanZ
        22	tBodyGyrostdX
        23	tBodyGyrostdY
        24	tBodyGyrostdZ
        25	tBodyGyroJerkmeanX
        26	tBodyGyroJerkmeanY
        27	tBodyGyroJerkmeanZ
        28	tBodyGyroJerkstdX
        29	tBodyGyroJerkstdY
        30	tBodyGyroJerkstdZ
        31	tBodyAccMagmean
        32	tBodyAccMagstd
        33	tGravityAccMagmean
        34	tGravityAccMagstd
        35	tBodyAccJerkMagmean
        36	tBodyAccJerkMagstd
        37	tBodyGyroMagmean
        38	tBodyGyroMagstd
        39	tBodyGyroJerkMagmean
        40	tBodyGyroJerkMagstd
        41	fBodyAccmeanX
        42	fBodyAccmeanY
        43	fBodyAccmeanZ
        44	fBodyAccstdX
        45	fBodyAccstdY
        46	fBodyAccstdZ
        47	fBodyAccJerkmeanX
        48	fBodyAccJerkmeanY
        49	fBodyAccJerkmeanZ
        50	fBodyAccJerkstdX
        51	fBodyAccJerkstdY
        52	fBodyAccJerkstdZ
        53	fBodyGyromeanX
        54	fBodyGyromeanY
        55	fBodyGyromeanZ
        56	fBodyGyrostdX
        57	fBodyGyrostdY
        58	fBodyGyrostdZ
        59	fBodyAccMagmean
        60	fBodyAccMagstd
        61	fBodyAccJerkMagmean
        62	fBodyAccJerkMagstd
        63	fBodyGyroMagmean
        64	fBodyGyroMagstd
        65	fBodyGyroJerkMagmean
        66	fBodyGyroJerkMagstd
        
     4) mean
        
        This variable represents the calculated average (mean) per unique combination of activity, subject and measurement.
        
        Class = numeric
        Range = (1)-1 (from -1 to +1)
