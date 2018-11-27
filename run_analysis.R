# Coursera - Getting and Cleaning Data Course Project

# The provided Readme.md contains more details about this project and related data.
# The provided CodeBook.md contains more information about this script.

# This R script is used to load, clean, summarize data and create a final data extract. 
# It is build up in five phases:
#  1) Getting the data
#  2) Cleaning the data
#  3) Summarizing the data
#  4) Creating tidy data set

# HARUSD = Human Activity Recognition Using Smartphones Dataset

# --

## 1) Getting the data

###     1.1) Creating a data repository if not already existing
        if(!file.exists("./data")){dir.create("./data")}
        
###     1.2) Loading the data from the provided URL and extract the file into the repository
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile = "./data/HARUSD.zip", method = "curl")
        unzip("./data/HARUSD.zip", exdir = "./data")

###     1.3) Loading activity names
        activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("activityID", "activity"))
        activitylabels #check ouput
        
###     1.4) Loading feature names
        featurelabels <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("featureID","feature"))
        featurelabels #check output
        
###     1.5) Loading training data & labels
        traindata <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
        trainlabels <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = c("activityID"))
        trainsubjectID <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = c("subjectID"))

###     1.6) Loading test data & labels
        testdata <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
        testlabels <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = c("activityID"))
        testsubjectID <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = c("subjectID"))

###     1.7) Merging data
        totaldata <- rbind(traindata, testdata)
        totallabels <- rbind(trainlabels, testlabels)
        totalsubjectID <- rbind(trainsubjectID, testsubjectID)
        
###     1.8) Loading specific scope: "only measurements on the mean and standard deviation"
        colmean <- grep('-mean()',featurelabels$feature, fixed = TRUE)
        colstd <- grep('-std()',featurelabels$feature, fixed = TRUE)
        colscoped <- sort(c(colmean, colstd))        
        scopeddata <- totaldata[,colscoped]
        enricheddata <- cbind(totallabels, totalsubjectID, scopeddata)
        
## 2) Cleaning the data

###     2.1) Create descriptive names
        names(enricheddata) #look at current column names
        scopedfeatures <- featurelabels[colscoped,2] #load only required labels
        descrnames <- c("activityID","subject",as.character(scopedfeatures))
        
        #Removing & changing characters:
        descrnames <- gsub("()","",descrnames, fixed = TRUE)
        descrnames <- gsub("BodyBody","Body",descrnames, fixed = TRUE)
        descrnames <- gsub("-","",descrnames, fixed = TRUE)
        descrnames <- gsub(",","-",descrnames, fixed = TRUE)

###     2.2) Assign descriptive names
        final <- merge(enricheddata, activitylabels, by = c("activityID"), all.x = TRUE)
                
## 3) Summarizing the data
        library("tidyr")
        library("dplyr")
        
        tidy <- tbl_df(final) %>%
                        group_by(activity, subject) %>%
                        summarize_each(funs(mean)) %>%
                        gather(measurement, mean, -activityID, -activity, -subject) %>%
                        select(activity, subject, measurement, mean)
        
## 4) Creating tidy data set
        write.table(tidy, file="tidydataset.txt", row.name = FALSE)
        