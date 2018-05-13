# Getting and Cleaning Data using R 
This script is written for the assignment project for the "Getting and Cleaning Data course" at coursera. The R script (run_analysis.R) is used to clean the raw downloaded data file. In the following, we will shortly inform how the code works:

1. "x_train.txt" and "x_test.txt" are read as data frame and then are combined together (created x_total).
2. "y_train.txt" and "y_test.txt" are read as data frame and then are combined together (created y_total).
3. "subject_train.txt" and "subject_test.txt" are read as data frame and then are combined together (created sub_total).
4. The specific columns containing only "mean" and "STD" features are extracted and gathered in a new 
   data frame with the respective "label" and "subject". it is ready to be used after running the script.
   This data frame is in the global environment as "tidy_dataframe"
5. the tidy output containing only "mean" features is extracted in the same way and written in a TXT file ("tidy_data.txt")

# BY: Ali Dastgheib
# +98-9377603425
# jdastgheib@gmail.com
 
