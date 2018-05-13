# the following lines should be commented if you are in the "UCI HAR Dataset" directory.
main_dir = "C:/Users/Ali_D/Desktop/D_S/my_codes/Getting and Cleaning Data/course_project/UCI HAR Dataset"
setwd(main_dir) 

# if you are in the right directory, start from HERE:
x_train = read.table("./train/X_train.txt"); # train_feat_names = names(x_train)
x_test = read.table("./test/X_test.txt"); # test_feat_names = names(x_test)
x_total = rbind.data.frame(x_train, x_test)

feat_list = read.table("./features.txt")
names(x_total) <- feat_list$V2
feat_list <- names(x_total)

mean_idx <- which(grepl("-mean()", feat_list))
std_idx <- which(grepl("-std()", feat_list))
good_idx <- c(mean_idx, std_idx)

y_train = read.table("./train/y_train.txt"); sub_train = read.table("./train/subject_train.txt")
y_test = read.table("./test/y_test.txt"); sub_test = read.table("./test/subject_test.txt")
y_y = rbind.data.frame(y_train, y_test); sub_sub <- rbind.data.frame(sub_train, sub_test)

names(y_y) = "activity"; y_y$activity = as.factor(y_y$activity)
names(sub_sub) = "subject"; sub_sub$subject = as.factor(sub_sub$subject)

mean_dataframe = cbind.data.frame(sub_sub, y_y, x_total[, mean_idx])
names(mean_dataframe) <- tolower(names(mean_dataframe))
names(mean_dataframe) <- gsub("\\()", "", names(mean_dataframe))
write.table(mean_dataframe, "./tidy_data.txt")


## Output of the run_analysis.R script: 
tidy_dataframe = cbind.data.frame(sub_sub, y_y, x_total[, good_idx])
names(tidy_dataframe) <- tolower(names(tidy_dataframe))
names(tidy_dataframe) <- gsub("\\()", "", names(tidy_dataframe))
head(tidy_dataframe)
