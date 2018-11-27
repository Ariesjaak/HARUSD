# HARUSD
This repository is created for Coursera course "Getting and Cleaning Data" from Data Science Specialization, 
by Johns Hopkins University.

In this README script the following is explained:
  1) The Assignment
  2) Original README
  2) The Submitted Files:
  
    2.1) R script: "run_analysis.R"
    2.2) Codebook: "Codebook.md"
    2.3) Tidy data: "tidydataset.txt"

# 1) The Assignment
  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
  The goal is to prepare tidy data that can be used for later analysis. 
  
  Submittion requirements: 
  1) The submitted data set is tidy.
  2) The Github repo contains the required scripts, as per below requirements.
  3) GitHub contains a code book that modifies and updates the available codebooks with the data to indicate 
     all the variables and   summaries calculated, along with units, and any other relevant information.
  4) The README that explains the analysis files is clear and understandable.

  Required scripts: create one R script called run_analysis.R that does the following:
  1) Merges the training and the test sets to create one data set.
  2) Extracts only the measurements on the mean and standard deviation for each measurement.
  3) Uses descriptive activity names to name the activities in the data set
  4) Appropriately labels the data set with descriptive variable names.
  5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
     for each activity and each subject."

# 3) Original README
      ==================================================================
      Human Activity Recognition Using Smartphones Dataset
      Version 1.0
      ==================================================================
      Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
      Smartlab - Non Linear Complex Systems Laboratory
      DITEN - Universit‡ degli Studi di Genova.
      Via Opera Pia 11A, I-16145, Genoa, Italy.
      activityrecognition@smartlab.ws
      www.smartlab.ws
      ==================================================================

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

# 3) The Submitted Files

  ## 3.1) R script: "run_analysis.R"
     This file contains the R script used to load, clean, summarize the data and to create the final "Tidy data" 
     extract.
     The "Codebook.md" file explains the script, variables
     
     It is build up in four phases:
       1) Getting the data
       2) Cleaning the data
       3) Summarizing the data
       4) Creating tidy data set
    
    The phases are described below:
    
    1) Getting the data
    
      This phase is used to create a data repository, load the data from the provided URL, unzip the data, 
      load the data in R, merge the data and creating the required scope for only measurements on the mean and standard deviation.
      
      To make this understandable and clear, the script is split up in 8 steps:
        1.1) Creating a data repository if not already existing
        1.2) Loading the data from the provided URL and extract the file into the repository
             Data is loaded from the URL and unzipped.
        1.3) Loading activity names
        1.4) Loading feature names
        1.5) Loading training data & labels
        1.6) Loading test data & labels
        1.7) Merging data
              This covers requirement number 1 from "Required scripts" in the previously described chapter "the Assignement".
              The train and testdata are merged for:
              1) data
              2) labels
              3) subjectID
        1.8) Loading specific scope: "only measurements on the mean and standard deviation"
              This covers requirement number 2 from "Required scripts".
              First the features that consist only measurements on the mean and standard deviation are identified.
              This is used to create a subset with only those features.
     
     2) Cleaning the data
        
        In this phase first descriptive names are created for all features including removing and changing characters to 
        make them easier to read.
        Example: "BodyBody" changed into "Body"
        
        Secondly these descriptive names are asigned to the dataset which also includes loading the description of the activities instead using an Activity ID.
        
        Steps:
        2.1) Create descriptive names
        2.2) Assign descriptive names
     
     3) Summarizing the data
        
        For this step two packages are used: "tidyr" and "dplyr".
        A "tidy" data set is created by creating a table data frame from the final data from step 2) "Cleaning data"
        First the data is grouped by "activity" and "subject".
        Secondly, the mean is calculated for each feature per activity and subject
        Thirdly, the data is transposed by using the gather() function to get a dataframe with the following columns:
          - activityID
          - activity
          - subject
          - feature
          - mean
        Finally, all above columns, except "activityID" are "selected" by using the select() function
     
     4) Creating tidy data set
        
        In this final step the "tidy" data from step 3) "Summarizing the data" is extracted into "tidydataset.txt" by using the write.table() function
  
  ## 3.2) Codebook: "Codebook.md"
  
    

  ## 3.3) Tidy data: "tidydataset.txt"
     This file is the result of the R script "run_analysis.R" as described above.
     It contains the average (mean) of the features from the dataset 
  
  
