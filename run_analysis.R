
##Please view `README.md` in the repository (https://github.com/hubte1g/GettingAndCleaningData-CourseProject) for a definition of Requirements and Deliverables, as well as steps to execute and validate..
##Please view `CodeBook.md' (https://github.com/hubte1g/GettingAndCleaningData-CourseProject)
##Load necessary librar(ies) to produce the solution.
library(dplyr)

# 1. Merges the training and the test sets to create one data set.

##Load 'Subject' train and test datasets, merge by rows, and add column header.
subjTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subjTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subj <- rbind(sTrain, sTest)
names(subj) <- "subj_id"

##Load 'Activity' train and test datasets, merge by rows, and add column header.
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
yTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
y <- rbind(yTrain, yTest)
names(y) <- "activity"

##Load 'Features' train and test datasets, merge by rows.
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
xTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
x <- rbind(xTrain, xTest)

##Load features *variables* descriptive names file, add column headers.
feat_lkp <- read.table("UCI HAR Dataset/features.txt")

##Add features *variables* names to 'Features' data.
names(feat_lkp) <- c("feat_id", "feat_name")
colnames(x) <- t(feat_lkp[2])

##Merge 'Subject', 'Activity', and 'Features' data by column, ensure uniqueness of column names.
all <- cbind(subj, y, x)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

##Use grep() function to extract and store the features *variables* with variations of 'mean' of 'std' in the name.
extract_MeanStd <- grep("-mean\\(\\)|-std\\(\\)|Mean", feat_lkp[,2])

##Create intermediate data.frame preserving only the desired variables from above.
all.MeanStd <- all[extract_MeanStd]


# 3. Uses descriptive activity names to name the activities in the data set.
##Load activity descriptive names file, add column headers.
act_lkp <- read.table("UCI HAR Dataset/activity_labels.txt")
names(act_lkp) <- c("act_id", "act_name")
##Replace values in intermediate dataset with descriptive names.
all.MeanStd[,2] = act_lkp[all.MeanStd[,2],2]


# 4. Appropriately *labels* the data set with descriptive variable names.
##Use gsub() function to improve labels in intermediate dataset based on string match in original name.
colnames(all.MeanStd) <- gsub("tBody", "TimeBody_", colnames(all.MeanStd))
colnames(all.MeanStd) <- gsub("tGravity", "TimeGravity_", colnames(all.MeanStd))
colnames(all.MeanStd) <- gsub("fBody", "FFTBody_", colnames(all.MeanStd))
colnames(all.MeanStd) <- gsub("Acc-", "Acceleration", colnames(all.MeanStd))
colnames(all.MeanStd) <- gsub("Gyro", "AngularSpeed", colnames(all.MeanStd))
colnames(all.MeanStd) <- gsub("Mag", "Magnitude", colnames(all.MeanStd))
colnames(all.MeanStd) <- gsub("mean", "Mean", colnames(all.MeanStd))


# 5. Creates a second, indpendent tidy data set with the average of each variable for each activity and subject.

##Ensure all column names are unique.
names(all.MeanStd)<-make.names(names(all.MeanStd),unique=TRUE)
##Load merged data using dplyr to tbl_df for query.
all.MeanStd.tbl_df <- tbl_df(all.MeanStd)
##Select and store, for each subject and activity, averages of each features variable (columns 3 through 73) in the tbl_df.
tidy_stage <- all.MeanStd.tbl_df %>%
  select(subj_id, activity, 3:73) %>%
  group_by(subj_id, activity) %>%
  summarise_each(funs(mean(.)))
##Prefix column names in staged file for each variable to note that they are averages.
colnames(tidy_stage)[3:73] <- paste("Avg", colnames(tidy_stage)[3:73], sep = "_")
## Write tidy dataset, omitting row names (specified on submission page), to working directory.
write.table(tidy_stage, "tidy.txt", row.names = FALSE)





 










