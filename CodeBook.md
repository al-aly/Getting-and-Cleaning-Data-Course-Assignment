## Objective
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
## Criteria
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables    and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.
 
## Descriptions
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each        activity and each subject.


# About source data
As sourse data for work was used Human Activity Recognition Using Smartphones Data Set. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#About R script (run_analysis.R)
File with R code "run_analysis.R" perform 5 following steps (in accordance assigned task of course work):
1. Download and unzip the dataset (dataset.zip)
2. Merging the training and the test sets to create one data set.
 * 2.1 Reading files
 * 2.1.1 Reading trainings tables from train folder (x_train.txt,y_train.txt,subject_train.txt)
 * 2.1.2 Reading testing tables from test folder  (x_test.txt,y_test.txt,subject_test.txt)
 * 2.1.3 Reading feature vector from file feature.txt
 * 2.1.4 Reading activity labels from file activity_labels.txt
2.2 Assigning column names
2.3 Merging all data in one set

3. Extracting only the measurements on the mean and standard deviation for each measurement
 * 3.1 Reading column names
 * 3.2 Create vector for defining ID, mean and standard deviation
 * 3.3 Making nessesary subset from setAllInOne

4. Using descriptive activity names to name the activities in the data set
5. Appropriately labeling the data set with descriptive variable names

6. Creating an independent tidy data set with the average of each variable for each activity and each subject
6.1 Making tidy data set
6.2 Writing tidy data set in txt file (tidy_set.txt)

#About variables:
 * a. x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.
 * b. x_data, y_data and subject_data merge the previous datasets to further analysis.
 * c. features contains the correct names for the x_data dataset, which are applied to the column names stored in


