#
# 2014-8-18 
# Coursera Getting and Cleaning Data course project
#
# This script tidies motion data obtained from the accelerometer of a Samsung Galaxy 
# S II worn by test subjects. It merges test and training data, obtains the means and
# standard deviations, and labels the data appropriately. The tidy data set is saved to 
# a file called tidyData.txt.
#
# Before you begin, this script requires the following dataset to be saved in the the
# current working directory:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#

# Extract the compressed information
zipfile <- 'getdata-projectfiles-UCI HAR Dataset.zip'
unzipped <- unzip(zipfile)

#
# Prepare the activity labels
#
# These labels are converted to all lowercase and stripped of underscores in order to 
# meet the naming expectations outlined in class
#
activityLabels <- read.table('UCI HAR Dataset/activity_labels.txt', col.names=c('id', 'name'))
activityLabels$name <- tolower(activityLabels$name)
activityLabels$name <- sub('_', '', activityLabels$name)

#
# Prepare the feature labels
#
# The naming conventions outlined in class make these labels less readable. As
# such, hyphens are converted to underscores, parentheses are removed, and commas are 
# replaced with periods so that column headers aren't mangled by R.
#
featureLabels <- read.table('UCI HAR Dataset/features.txt', col.names=c('id', 'name'))
featureLabels$name <- gsub('-', '_', featureLabels$name)
featureLabels$name <- gsub(',', '.', featureLabels$name)
featureLabels$name <- gsub('\\(', '', featureLabels$name)
featureLabels$name <- gsub('\\)', '', featureLabels$name)

#
# Prepare the test data
#
# Test data is read into a table and the test subject's activities labeled
# appropriately
#
testLabels <- read.table('UCI HAR Dataset/test/y_test.txt', col.names=c('name')) 
testLabels <- factor(testLabels$name, labels=activityLabels$name)
testSubjects <- read.table('UCI HAR Dataset/test/subject_test.txt') 
testData <- read.table('UCI HAR Dataset/test/X_test.txt', col.names=featureLabels$name) 
testData <- cbind(testSubjects, testLabels, testData)
colnames(testData)[1] <- 'SubjectID'
colnames(testData)[2] <- 'Activity'

#
# Prepare the training data
#
# Training data is read into a table and the test subject's activities labeled
# appropriately (same as above, except with the training data)
#
trainingLabels <- read.table('UCI HAR Dataset/train/y_train.txt', col.names=c('name')) 
trainingLabels <- factor(trainingLabels$name, labels=activityLabels$name)
trainingTestSubjects <- read.table('UCI HAR Dataset/train/subject_train.txt') 
trainingData <- read.table('UCI HAR Dataset/train/X_train.txt', col.names=featureLabels$name) 
trainingData <- cbind(trainingTestSubjects, trainingLabels, trainingData)
colnames(trainingData)[1] <- 'SubjectID'
colnames(trainingData)[2] <- 'Activity'

#
# Combine the test data and training data
#
combinedData <- rbind(testData, trainingData)

#
# Identify which columns contain mean and standard deviation data. Measurements
# like gravityMean and meanFreq are also included here.
#
relevantColumns <- grep('[Mm]ean|std', colnames(combinedData))

#
# Collect the data in the relevant columns. Column 1 and 2 are the
# SubjectID and Activity, respectively
#
relevantData <- combinedData[,c(1, 2, relevantColumns)]

#
# Get the averages for each subject's activity
#
tidyData <- aggregate(relevantData[,c(-1,-2)], by=list(relevantData$Activity, relevantData$SubjectID), FUN=mean, na.rm=TRUE)

#
# Present data with the SubjectID in the left-most column
#
tidyData <- tidyData[,c(2,1,3:length(names(tidyData)))]

#
# Label the two left-most columns appropriately (i.e., SubjectID and Activity)
#
colnames(tidyData)[1] <- 'SubjectID'
colnames(tidyData)[2] <- 'Activity'

#
# Write to file
#
write.table(tidyData, file='tidyData.txt', row.name=FALSE)

