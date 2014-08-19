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
# such, hyphens are converted to underscores, parantheses are removed, and commas are 
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
testData <- read.table('UCI HAR Dataset/test/X_test.txt', col.names=featureLabels$name) 
testData <- cbind(testLabels, testData)
colnames(testData)[1] <- 'Activity'

#
# Prepare the training data
#
# Training data is read into a table and the test subject's activities labeled
# appropriately
#
trainingLabels <- read.table('UCI HAR Dataset/train/y_train.txt', col.names=c('name')) 
trainingLabels <- factor(trainingLabels$name, labels=activityLabels$name)
trainingData <- read.table('UCI HAR Dataset/train/X_train.txt', col.names=featureLabels$name) 
trainingData <- cbind(trainingLabels, trainingData)
colnames(trainingData)[1] <- 'Activity'

#
# Combine the test data and training data
#
combinedData <- rbind(testData, trainingData)

#
# Identify which columns contain mean and standard deviation data
#
relevantColumns <- grep('[Mm]ean|std', colnames(combinedData))

#
# Collect the data in the relevant columns
#
relevantData <- combinedData[,c(1, relevantColumns)]


#
# Write to file
#
write.table(relevantData, file='tidyData.txt')

