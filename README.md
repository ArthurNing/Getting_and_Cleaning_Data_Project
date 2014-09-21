The raw data of this data set is "Human Activity Recognition Using Smartphones Dataset".(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

After downloading, unzip it to "./UCI HAR Dataset". 

Then read and merge train and test data sets (subject, X and y) as the illustration in "David's project FAQ".(https://class.coursera.org/getdata-007/forum/thread?thread_id=49)
data by these names. Including the two variables describing activities and subjects also(data in y_test, y_train, subject_test, subject_train).

Then change the names of activities from number to descriptive names by as.factor() and levels() functions.

Next, to appropriately label the data set with descriptive variable names, sub() function is used. The abbreviations are expanded. Besides, the hyphens and brackets are deleted.

Finally, after using ddply() to calculate the average of each variable for each activity and each subject,write.table() is used to write new data frame out.

Here are three files:

project.R: The R script which is used to get, clean and write out data
Human_Activity_Mean.txt: New data frame created following required steps
Codebook.md: The interpretation of variables in Human_Activity_Mean.txt

Thanks for your marking!