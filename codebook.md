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
