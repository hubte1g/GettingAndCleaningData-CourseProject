Getting and Cleaning Data : Course Project Codebook
=====================================
Author: Joshua Lickteig (https://github.com/hubte1g)

This codebook defines the solution data and hosts a semantic description of solution logic to achieve project goals.



Solution Logic
--------------------------
> (1) Subject, activity, and features data are loaded via read.table and test and train datasets are bound by row using rbind(). Features variable names are also loaded and an ID and name header assigned. The values of column "feat_name" are then looked up and assigned to the rows in the features data. A column bind is then used to bring all data together into one set 'all'.

> (2) A grep function is used to extract only the variables of interest, means and standard deviations, account for certain variations in the names used in the dataset. The is subset of the entire dataset is then stored in a new data.frame called 'all.MeanStd'.

> (3) Activity names are then loaded and ID and name column headers assigned. The names are then looked up and replace the ID's in the dataset.

> (4) Substitutions are made to bring more meaning to the measurement columns in the dataset.

> (5) The 'all.MeanStd' data set is loaded into a tbl_df and a selection is made that groups the data by subject ID and activity and averages each variable of interest, columns 3-73. "Avg_" is prepended to the column names and the table is written to a text file, producing the tidy dataset.

