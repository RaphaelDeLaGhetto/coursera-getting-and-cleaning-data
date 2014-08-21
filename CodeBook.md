Code Book: Human Activity Recognition Using Smartphones Dataset
===============================================================

This document describes the data, variables, transformations, and work performed on the
HAR data set.

# Data source

A description of the data used in this project can be found
[here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

It was downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) on August 15, 2014.

# Variables

Each of the variables listed below is accompanied by a description, its column position in the tidy data
set, and a range of possible values.

## SubjectID

The numeric identifier of the participants in the HAR study

Position: 1

Values: 1:30

## Activity

One of six possible activities measured by the Samsung device

Position: 2

Values: [walking, walkingupstairs, walkingdownstairs, sitting, standing, laying]

## tBodyAcc_mean_X

The average time domain signals for body acceleration along the x-axis

Position: 3

Values: normalized from -1 to 1

## tBodyAcc_mean_Y

The average time domain signals for body acceleration along the y-axis

Position: 4

Values: normalized from -1 to 1

## tBodyAcc_mean_Z

The average time domain signals for body acceleration along the z-axis

Position: 5

Values: normalized from -1 to 1

## tBodyAcc_std_X

The average standard deviation of time domain signals for body acceleration along the x-axis

Position: 6

Values: normalized from -1 to 1

## tBodyAcc_std_Y

The average standard deviation of time domain signals for body acceleration along the y-axis

Position: 7

Values: normalized from -1 to 1

## tBodyAcc_std_Z

The average standard deviation of time domain signals for body acceleration along the z-axis

Position: 8

Values: normalized from -1 to 1

## tGravityAcc_mean_X

The average time domain signals for gravity acceleration along the x-axis

Position: 9

Values: normalized from -1 to 1

## tGravityAcc_mean_Y

The average time domain signals for gravity acceleration along the y-axis

Position: 10

Values: normalized from -1 to 1

## tGravityAcc_mean_Z

The average time domain signals for gravity acceleration along the z-axis

Position: 11

Values: normalized from -1 to 1

## tGravityAcc_std_X

The average standard deviation of time domain signals for gravity acceleration along the x-axis

Position: 12

Values: normalized from -1 to 1

## tGravityAcc_std_Y

The average standard deviation of time domain signals for gravity acceleration along the y-axis

Position: 13

Values: normalized from -1 to 1

## tGravityAcc_std_Z

The average standard deviation of time domain signals for gravity acceleration along the z-axis

Position: 14

Values: normalized from -1 to 1

## tBodyAccJerk_mean_X

The average body linear acceleration time domain jerk signals along the x-axis

Position: 15

Values: normalized from -1 to 1

## tBodyAccJerk_mean_Y

The average body linear acceleration time domain jerk signals along the y-axis

Position: 16

Values: normalized from -1 to 1

## tBodyAccJerk_mean_Z

The average body linear acceleration time domain jerk signals along the z-axis

Position: 17

Values: normalized from -1 to 1

## tBodyAccJerk_std_X 

The average standard deviation of body linear acceleration time domain jerk signals
along the x-axis

Position: 18

Values: normalized from -1 to 1

## tBodyAccJerk_std_Y

The average standard deviation of body linear acceleration time domain jerk signals
along the y-axis

Position: 19

Values: normalized from -1 to 1

## tBodyAccJerk_std_Z

The average standard deviation of body linear acceleration time domain jerk signals 
along the z-axis

Position: 20

Values: normalized from -1 to 1

## tBodyGyro_mean_X

The average 3-axial raw time domain signals for the gyroscope along the x-axis

Position: 21

Values: normalized from -1 to 1

## tBodyGyro_mean_Y

The average 3-axial raw time domain signals for the gyroscope along the y-axis

Position: 22

Values: normalized from -1 to 1

## tBodyGyro_mean_Z

The average 3-axial raw time domain signals for the gyroscope along the z-axis

Position: 23

Values: normalized from -1 to 1

## tBodyGyro_std_X

The average standard deviation of 3-axial raw time domain signals for the gyroscope along
the x-axis

Position: 24

Values: normalized from -1 to 1

## tBodyGyro_std_Y

The average standard deviation of 3-axial raw time domain signals for the gyroscope along
the y-axis

Position: 25

Values: normalized from -1 to 1

## tBodyGyro_std_Z

The average standard deviation of 3-axial raw time domain signals for the gyroscope along
the z-axis

Position: 26

Values: normalized from -1 to 1

## tBodyGyroJerk_mean_X

The average 3-axial raw time domain jerk signals for the gyroscope along the x-axis

Position: 27

Values: normalized from -1 to 1

## tBodyGyroJerk_mean_Y

The average 3-axial raw time domain jerk signals for the gyroscope along the y-axis

Position: 28

Values: normalized from -1 to 1

## tBodyGyroJerk_mean_Z

The average 3-axial raw time domain jerk signals for the gyroscope along the z-axis

Position: 29

Values: normalized from -1 to 1

## tBodyGyroJerk_std_X

The average standard deviation of 3-axial raw time domain jerk signals for the gyroscope along the x-axis

Position: 30

Values: normalized from -1 to 1

## tBodyGyroJerk_std_Y

The average standard deviation of 3-axial raw time domain jerk signals for the gyroscope along the y-axis

Position: 31

Values: normalized from -1 to 1

## tBodyGyroJerk_std_Z

The average standard deviation of 3-axial raw time domain jerk signals for the gyroscope along the z-axis

Position: 32

Values: normalized from -1 to 1

## tBodyAccMag_mean

The average time domain signals for body acceleration magnitude

Position: 33

Values: normalized from -1 to 1

## tBodyAccMag_std

The average standard deviation of time domain signals for body acceleration magnitude

Position: 34

Values: normalized from -1 to 1

## tGravityAccMag_mean

The average time domain signals for gravity acceleration magnitude

Position: 35

Values: normalized from -1 to 1

## tGravityAccMag_std

The average standard deviation of time domain signals for gravity acceleration magnitude

Position: 36

Values: normalized from -1 to 1

## tBodyAccJerkMag_mean

The average time domain signals for body acceleration jerk magnitude

Position: 37

Values: normalized from -1 to 1

## tBodyAccJerkMag_std

The average standard deviation of time domain signals for body acceleration jerk magnitude

Position: 38

Values: normalized from -1 to 1

## tBodyGyroMag_mean

The average magnitude of 3-axial raw time domain signals for the gyroscope

Position: 39

Values: normalized from -1 to 1

## tBodyGyroMag_std

The average standard deviation of magnitude of 3-axial raw time domain signals for the gyroscope

Position: 40

Values: normalized from -1 to 1

## tBodyGyroJerkMag_mean

The average magnitude of 3-axial raw time domain jerk signals for the gyroscope

Position: 41

Values: normalized from -1 to 1

## tBodyGyroJerkMag_std

The average standard deviation of magnitude of 3-axial raw time domain jerk signals for the gyroscope

Position: 42

Values: normalized from -1 to 1

## fBodyAcc_mean_X

The average frequency domain signals for body acceleration along the x-axis

Position: 43

Values: normalized from -1 to 1

## fBodyAcc_mean_Y

The average frequency domain signals for body acceleration along the y-axis

Position: 44

Values: normalized from -1 to 1

## fBodyAcc_mean_Z

The average frequency domain signals for body acceleration along the z-axis

Position: 45

Values: normalized from -1 to 1

## fBodyAcc_std_X

The average standard deviation of frequency domain signals for body acceleration along the x-axis

Position: 46

Values: normalized from -1 to 1

## fBodyAcc_std_Y

The average standard deviation of frequency domain signals for body acceleration along the y-axis

Position: 47

Values: normalized from -1 to 1

## fBodyAcc_std_Z

The average standard deviation of frequency domain signals for body acceleration along the z-axis

Position: 48

Values: normalized from -1 to 1

## fBodyAcc_meanFreq_X

The weighted average of frequency domain signals for body acceleration along the x-axis

Position: 49

Values: normalized from -1 to 1

## fBodyAcc_meanFreq_Y

The weighted average of frequency domain signals for body acceleration along the y-axis

Position: 50

Values: normalized from -1 to 1

## fBodyAcc_meanFreq_Z

The weighted average of frequency domain signals for body acceleration along the z-axis

Position: 51

Values: normalized from -1 to 1

## fBodyAccJerk_mean_X

The average frequency domain signals for body acceleration jerk signals along the x-axis 

Position: 52

Values: normalized from -1 to 1

## fBodyAccJerk_mean_Y

The average frequency domain signals for body acceleration jerk signals along the y-axis 

Position: 53

Values: normalized from -1 to 1

## fBodyAccJerk_mean_Z

The average frequency domain signals for body acceleration jerk signals along the z-axis 

Position: 54

Values: normalized from -1 to 1

## fBodyAccJerk_std_X

The average standard deviation of frequency domain signals for body acceleration jerk signals along the
x-axis 

Position: 55

Values: normalized from -1 to 1

## fBodyAccJerk_std_Y

The average standard deviation of frequency domain signals for body acceleration jerk signals along the
y-axis 

Position: 56

Values: normalized from -1 to 1

## fBodyAccJerk_std_Z

The average standard deviation of frequency domain signals for body acceleration jerk signals along the
z-axis 

Position: 57

Values: normalized from -1 to 1

## fBodyAccJerk_meanFreq_X

The weighted average frequency domain signals for body acceleration jerk signals along the x-axis 

Position: 58

Values: normalized from -1 to 1

## fBodyAccJerk_meanFreq_Y

The weighted average frequency domain signals for body acceleration jerk signals along the y-axis 

Position: 59

Values: normalized from -1 to 1

## fBodyAccJerk_meanFreq_Z

The weighted average frequency domain signals for body acceleration jerk signals along the z-axis 

Position: 60

Values: normalized from -1 to 1

## fBodyGyro_mean_X

The average 3-axial raw frequency domain signals for the gyroscope along the x-axis

Position: 61

Values: normalized from -1 to 1

## fBodyGyro_mean_Y

The average 3-axial raw frequency domain signals for the gyroscope along the y-axis

Position: 62

Values: normalized from -1 to 1

## fBodyGyro_mean_Z

The average 3-axial raw frequency domain signals for the gyroscope along the z-axis

Position: 63

Values: normalized from -1 to 1

## fBodyGyro_std_X

The average standard deviation of 3-axial raw frequency domain signals for the gyroscope along the x-axis

Position: 64

Values: normalized from -1 to 1

## fBodyGyro_std_Y

The average standard deviation of 3-axial raw frequency domain signals for the gyroscope along the y-axis

Position: 65

Values: normalized from -1 to 1

## fBodyGyro_std_Z

The average standard deviation of 3-axial raw frequency domain signals for the gyroscope along the z-axis

Position: 66

Values: normalized from -1 to 1

## fBodyGyro_meanFreq_X

The weighted average standard deviation of 3-axial raw frequency domain signals for the gyroscope along the
x-axis

Position: 67

Values: normalized from -1 to 1

## fBodyGyro_meanFreq_Y

The weighted average standard deviation of 3-axial raw frequency domain signals for the gyroscope along the
y-axis

Position: 68

Values: normalized from -1 to 1

## fBodyGyro_meanFreq_Z

The weighted average standard deviation of 3-axial raw frequency domain signals for the gyroscope along the
z-axis

Position: 69

Values: normalized from -1 to 1

## fBodyAccMag_mean

The average frequency domain signals for body acceleration magnitude

Position: 70

Values: normalized from -1 to 1

## fBodyAccMag_std

The average standard deviation of frequency domain signals for body acceleration magnitude

Position: 71

Values: normalized from -1 to 1

## fBodyAccMag_meanFreq

The weighted average of frequency domain signals for body acceleration magnitude

Position: 72

Values: normalized from -1 to 1

## fBodyBodyAccJerkMag_mean

This is one of nine undocumented "_BodyBody_" columns contained in the original dataset. This column
and the eight that follow are assumed to correspond to the single "_Body_" equivalents described in
`features_info.txt`.

The average frequency domain signals for body acceleration jerk magnitude

Position: 73

Values: normalized from -1 to 1

## fBodyBodyAccJerkMag_std

The average standard deviation of frequency domain signals for body acceleration jerk magnitude

Position: 74

Values: normalized from -1 to 1

## fBodyBodyAccJerkMag_meanFreq

The weighted average of frequency domain signals for body acceleration jerk magnitude

Position: 75

Values: normalized from -1 to 1

## fBodyBodyGyroMag_mean

The average magnitude of 3-axial frequency time domain signals for the gyroscope

Position: 76

Values: normalized from -1 to 1

## fBodyBodyGyroMag_std

The average standard deviation of magnitude of 3-axial frequency time domain signals for the gyroscope

Position: 77

Values: normalized from -1 to 1

## fBodyBodyGyroMag_meanFreq

The average weighted standard deviation of magnitude of 3-axial frequency time domain signals for the
gyroscope

Position: 78

Values: normalized from -1 to 1

## fBodyBodyGyroJerkMag_mean

The average magnitude of 3-axial raw frequency domain jerk signals for the gyroscope

Position: 79

Values: normalized from -1 to 1

## fBodyBodyGyroJerkMag_std

The average standard deviation of magnitude of 3-axial raw frequency domain jerk signals for the gyroscope

Position: 80

Values: normalized from -1 to 1

## fBodyBodyGyroJerkMag_meanFreq

The weighted average standard deviation of magnitude of 3-axial raw frequency domain jerk signals for the
gyroscope

Position: 81

Values: normalized from -1 to 1

## angle_tBodyAccMean.gravity

The average angle between time domain signals for body acceleration and gravity

Position: 82

Values: normalized from -1 to 1

## angle_tBodyAccJerkMean.gravityMean

The average angle between body linear acceleration time domain jerk signals and gravity mean

Position: 83

Values: normalized from -1 to 1

## angle_tBodyGyroMean.gravityMean

The average angle between 3-axial raw time domain signals for the gyroscope and gravity mean

Position: 84

Values: normalized from -1 to 1

## angle_tBodyGyroJerkMean.gravityMean

The average angle between 3-axial raw time domain jerk signals for the gyroscope and gravity mean

Position: 85

Values: normalized from -1 to 1

## angle_X.gravityMean

The average angle between motion along the x-axis and gravity mean

Position: 86

Values: normalized from -1 to 1

## angle_Y.gravityMean

The average angle between motion along the y-axis and gravity mean

Position: 87

Values: normalized from -1 to 1

## angle_Z.gravityMean

The average angle between motion along the z-axis and gravity mean

Position: 88

Values: normalized from -1 to 1

