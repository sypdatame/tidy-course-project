Getting and Cleaning Data Course Project
November 2016.

Project Description

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

Background on the data

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used was pulled, and is available, here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A script called run_analysis.R was created to do the following:

-Merge the training and the test sets to create one data set.

-Extract only the measurements on the mean and standard deviation for each measurement. 

-Use descriptive activity names to name the activities in the data set

-Appropriately label the data set with descriptive activity names. 

-Create a second, independent tidy data set with the average of each variable for each activity and each subject. 


In this repository you will find:

CodeBook.md: information about the data, variables and the process by which the raw data was transformed into a tidy data set

LICENSE: license terms for text and code

README.md: this file

run_analysis.R: R script to transform the raw data set into a tidy one, following all project requirements

How to replicate this work and create the tidy data set as described in this repository:

-Clone this repository: git clone git@github.com:sypdatame/tidy-course-project.git

-Download compressed raw data

-Unzip the raw data and copy the directory UCI HAR Dataset to the cloned repository root directory

-Open an R console and, using setwd(), set the working directory to the repository root

-Source the run_analysis.R script (it requires the plyr and data.table packages)

-In the repository root directory you will find the tidy_data.txt file with the tidy data set.
