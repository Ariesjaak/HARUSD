# HARUSD
This repository is created for Coursera course "Getting and Cleaning Data" from Data Science Specialization, by Johns Hopkins University.

In this README script the following is explained:
  1) The Assignment
  2) The Submitted Files
  
    2.1) R script: "run_analysis.R"
    2.2) Codebook: "Codebook.md"
    2.3) Tidy data: "tidydataset.txt"

# The Assignment
  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
  The goal is to prepare tidy data that can be used for later analysis. 
  
  Submittion requirements: 
  1) The submitted data set is tidy.
  2) The Github repo contains the required scripts, as per below requirements.
  3) GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and   summaries calculated, along with units, and any other relevant information.
  4) The README that explains the analysis files is clear and understandable.

  Required scripts: create one R script called run_analysis.R that does the following:
  1) Merges the training and the test sets to create one data set.
  2) Extracts only the measurements on the mean and standard deviation for each measurement.
  3) Uses descriptive activity names to name the activities in the data set
  4) Appropriately labels the data set with descriptive variable names.
  5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

# The Submitted Files

  ## R script: "run_analysis.R"
     This file contains the R script used to load, clean, summarize the data and to create the final "Tidy data" extract.
     It is build up in four phases:
       1) Getting the data
       2) Cleaning the data
       3) Summarizing the data
       4) Creating tidy data set
    
    The phases are described below:
    
    1) Getting the data
      
      This phase consists of 8 steps:
        1.1) Creating a data repository if not already existing
        1.2) Loading the data from the provided URL and extract the file into the repository
        1.3) Loading activity names
        1.4) Loading feature names
        1.5) Loading training data & labels
        1.6) Loading test data & labels
        1.7) Merging data
              This covers requirement number 1 from "Required scripts" in the previously described chapter "the Assignement"
        1.8) Loading specific scope: "only measurements on the mean and standard deviation"
              This covers requirement number 2 from "Required scripts"

  ## Codebook: "Codebook.md"

  ## Tidy data: "tidydataset.txt"
