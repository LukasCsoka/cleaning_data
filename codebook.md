This file contains steps that the script run_analysis.R does:

1. The script loads the train and test datasets and joins them in three separate data frames.
2. The script extracts indices of mean and std than selects only these indices from test and train data. 
3. The names of features are changed, some not important chars are removed and lowered.
4. Activities are changed from numeric to descriptive names.
5. All data is merged into one.
6. The script saves this data as "final_data.txt".
7. Second dataset is created. Because we know, that there are 6 activities and 6 subjects, new data frame is created.
8. In the second data frame, avg of subject's activities are computed.
9. The script saves the file as "avg_data.txt"

Below are all data variables:
"subject" "activity" "tbodyacc-mean-x" "tbodyacc-mean-y" "tbodyacc-mean-z" "tbodyacc-std-x" "tbodyacc-std-y" "tbodyacc-std-z" "tgravityacc-mean-x" "tgravityacc-mean-y" "tgravityacc-mean-z" "tgravityacc-std-x" "tgravityacc-std-y" "tgravityacc-std-z" "tbodyaccjerk-mean-x" "tbodyaccjerk-mean-y" "tbodyaccjerk-mean-z" "tbodyaccjerk-std-x" "tbodyaccjerk-std-y" "tbodyaccjerk-std-z" "tbodygyro-mean-x" "tbodygyro-mean-y" "tbodygyro-mean-z" "tbodygyro-std-x" "tbodygyro-std-y" "tbodygyro-std-z" "tbodygyrojerk-mean-x" "tbodygyrojerk-mean-y" "tbodygyrojerk-mean-z" "tbodygyrojerk-std-x" "tbodygyrojerk-std-y" "tbodygyrojerk-std-z" "tbodyaccmag-mean" "tbodyaccmag-std" "tgravityaccmag-mean" "tgravityaccmag-std" "tbodyaccjerkmag-mean" "tbodyaccjerkmag-std" "tbodygyromag-mean" "tbodygyromag-std" "tbodygyrojerkmag-mean" "tbodygyrojerkmag-std" "fbodyacc-mean-x" "fbodyacc-mean-y" "fbodyacc-mean-z" "fbodyacc-std-x" "fbodyacc-std-y" "fbodyacc-std-z" "fbodyaccjerk-mean-x" "fbodyaccjerk-mean-y" "fbodyaccjerk-mean-z" "fbodyaccjerk-std-x" "fbodyaccjerk-std-y" "fbodyaccjerk-std-z" "fbodygyro-mean-x" "fbodygyro-mean-y" "fbodygyro-mean-z" "fbodygyro-std-x" "fbodygyro-std-y" "fbodygyro-std-z" "fbodyaccmag-mean" "fbodyaccmag-std" "fbodybodyaccjerkmag-mean" "fbodybodyaccjerkmag-std" "fbodybodygyromag-mean" "fbodybodygyromag-std" "fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std"
