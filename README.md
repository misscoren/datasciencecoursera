# Getting and Cleaning Data Course Project

This project contains one R script called `run_analysis.R` that does the following: 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
The dataset used is Human Activity Recognition Using Smartphones Dataset Version 1.0 [1] This dataset should be [downloaded](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracted directly into the data directory.

Once executed, the resulting dataset may be found at `./data/tidy_data.txt`

For futher details, refer to [CookBook.md](CookBook.md)


## Required R Packages

The R package `reshape2` is required to run this script. This maybe installed with,

```{r}
install.package("reshape2")
```


## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
<activityrecognition@smartlab.ws>