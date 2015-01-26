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


Dataset Columns
--------------------------

Column Name |
----------------------------------------------- |
subj_id |
activity |
Avg_TimeBody_AccelerationMean...X |
Avg_TimeBody_AccelerationMean...Y
Avg_TimeBody_AccelerationMean...Z
Avg_TimeBody_Accelerationstd...X
Avg_TimeBody_Accelerationcorrelation...X.Z
Avg_TimeBody_Accelerationcorrelation...Y.Z
Avg_TimeGravity_AccelerationMean...X
Avg_TimeGravity_AccelerationMean...Y
Avg_TimeGravity_AccelerationMean...Z
Avg_TimeGravity_Accelerationstd...X
Avg_TimeGravity_Accelerationcorrelation...X.Z
Avg_TimeGravity_Accelerationcorrelation...Y.Z
Avg_TimeBody_AccJerk.Mean...X
Avg_TimeBody_AccJerk.Mean...Y
Avg_TimeBody_AccJerk.Mean...Z
Avg_TimeBody_AccJerk.std...X
Avg_TimeBody_AccJerk.correlation...X.Z
Avg_TimeBody_AccJerk.correlation...Y.Z
Avg_TimeBody_AngularSpeed.Mean...X
Avg_TimeBody_AngularSpeed.Mean...Y
Avg_TimeBody_AngularSpeed.Mean...Z
Avg_TimeBody_AngularSpeed.std...X
Avg_TimeBody_AngularSpeed.correlation...X.Z
Avg_TimeBody_AngularSpeed.correlation...Y.Z
Avg_TimeBody_AngularSpeedJerk.Mean...X
Avg_TimeBody_AngularSpeedJerk.Mean...Y
Avg_TimeBody_AngularSpeedJerk.Mean...Z
Avg_TimeBody_AngularSpeedJerk.std...X
Avg_TimeBody_AngularSpeedJerk.correlation...X.Z
Avg_TimeBody_AngularSpeedJerk.correlation...Y.Z
Avg_TimeBody_AccMagnitude.arCoeff..3
Avg_TimeBody_AccMagnitude.arCoeff..4
Avg_TimeGravity_AccMagnitude.arCoeff..3
Avg_TimeGravity_AccMagnitude.arCoeff..4
Avg_TimeBody_AccJerkMagnitude.arCoeff..3
Avg_TimeBody_AccJerkMagnitude.arCoeff..4
Avg_TimeBody_AngularSpeedMagnitude.arCoeff..3
Avg_TimeBody_AngularSpeedMagnitude.arCoeff..4
Avg_TimeBody_AngularSpeedJerkMagnitude.arCoeff..3
Avg_TimeBody_AngularSpeedJerkMagnitude.arCoeff..4
Avg_FFTBody_AccelerationMean...X
Avg_FFTBody_AccelerationMean...Y
Avg_FFTBody_AccelerationMean...Z
Avg_FFTBody_Accelerationstd...X
Avg_FFTBody_AccelerationbandsEnergy...1.24
Avg_FFTBody_AccelerationbandsEnergy...25.48
Avg_FFTBody_AccJerk.Mean...X
Avg_FFTBody_AccJerk.Mean...Y
Avg_FFTBody_AccJerk.Mean...Z
Avg_FFTBody_AccJerk.std...X
Avg_FFTBody_AccJerk.bandsEnergy...1.24
Avg_FFTBody_AccJerk.bandsEnergy...25.48
Avg_FFTBody_AngularSpeed.Mean...X
Avg_FFTBody_AngularSpeed.Mean...Y
Avg_FFTBody_AngularSpeed.Mean...Z
Avg_FFTBody_AngularSpeed.std...X
Avg_FFTBody_AngularSpeed.bandsEnergy...1.24
Avg_FFTBody_AngularSpeed.bandsEnergy...25.48
Avg_FFTBody_AccMagnitude.skewness..
Avg_FFTBody_AccMagnitude.kurtosis..
Avg_FFTBody_BodyAccJerkMagnitude.skewness..
Avg_FFTBody_BodyAccJerkMagnitude.kurtosis..
Avg_FFTBody_BodyAngularSpeedMagnitude.skewness..
Avg_FFTBody_BodyAngularSpeedMagnitude.kurtosis..
Avg_FFTBody_BodyAngularSpeedJerkMagnitude.skewness..
Avg_FFTBody_BodyAngularSpeedJerkMagnitude.kurtosis..
Avg_angle.TimeBody_AccMean.gravity.
Avg_angle.TimeBody_AccJerkMean..gravityMean.
Avg_angle.TimeBody_AngularSpeedMean.gravityMean.
Avg_angle.TimeBody_AngularSpeedJerkMean.gravityMean.
Avg_angle.X.gravityMean.


