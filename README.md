Getting and Cleaning Data : Course Project
=====================================
Author: Joshua Lickteig (https://github.com/hubte1g)

This solution was developed on a system with the following session details:

> ```sessionInfo()```  

> R version 3.1.1 (2014-07-10)  
> Platform: x86_64-w64-mingw32/x64 (64-bit)  

> locale:  
> [1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252  
> [3] LC_MONETARY=English_United States.1252 LC_NUMERIC=C  
> [5] LC_TIME=English_United States.1252


Requirements
--------------------------

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called `CodeBook.md`. You should also include a `README.md` in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
> 
> One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
 
> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
> Here are the data for the project:
 
> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
> You should create one R script called `run_analysis.R` that does the following.
 
> (1) Merges the training and the test sets to create one data set.
> (2) Extracts only the measurements on the mean and standard deviation for each measurement.
> (3) Uses descriptive activity names to name the activities in the data set.
> (4) Appropriately labels the data set with descriptive activity names.
> (5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

> Good luck!

Deliverables
-------------------------------
> Files identified in Requirements section above:

* `run_analysis.R` : Actual R script to read source data and achieve goals (1-5, above) to produce tidy dataset.

* `CodeBook.md` : Data dictionary and semantic description of solution logic to achieve project goals.

* `README.md` : Explanation of Course Project requirements, deliverables, contents of script to produce 'tidy' dataset, and instructions to execute and validate the solution.


Validation of 'tidy' dataset in R
----------------
* Download the file `tidy.txt` from the Course Project Evaluation site and save to your R or RSTudio working directory.

* Read the file into R and view the data with the following code : ```data <- read.table("tidy.txt", header = TRUE)```  &nbsp;  ```View(data)```

Execution of script
-------------------------------

* Download the compressed (zipped) source data (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to your machine and unzip the folder [UCI HAR Dataset] to a local R or RStudio working directory.  

* Clone (or download and unzip) the solution repository from GitHub (https://github.com/hubte1g/GettingAndCleaningData-CourseProject).

* Copy or move the file `run_analysis.R` to your local R or RStudio working directory. 

* Run the R script from your working directory : ```source("run_analysis.R")```

* The final line of the script ```write.table(tidy_stage, "tidy.txt", row.names = FALSE)``` writes the file 'tidy.txt', which was uploaded to the Course Project site. Read the data directly from the grouped data.frame in R with this script: ```View(tidy_stage)```.





