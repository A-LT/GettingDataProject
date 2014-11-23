GettingDataProject
==================

This repo contains three files: a R script of the run_analysis program, a markdown file for the codebook, and this markdown file Readme. 

The run_analysis.R program does a number of things. Data from several files are combined in the following order. 

-Subjects in the train and test files are row combined. The resultant data frame called subject, is column labeled Subject.
-Activities in the y_train and y_test files are row combined. The resultant data frame called activity, is column labeled Activity. THe numbered activities are then changed into factors with names Walking, Walking_Up, Walking_Down, Standing, Sittying, and Laying. 
-The two large files, X_train and X_test are row combined into a temp data frame called specs
-Names of the feature columns are extracted from the feature file using grep so that only relevant mean and std columns can later be selected. 
-Using the dplyr package and the select command, f_data frame contains relevant data. 
-Column names are made using make.names function with the same feature column names as those extracted.
-Now three data frames (subject, activity, f_data) are all column bound together and called all_data.
-In order to manipulate the data and perform the mean, all_data is transformed using the melt function into a tall and long data frame called tall_data.
-The final data frame is created using dcast where a mean is performed on each feature depending on the subject and activity being done. This is written into a file called GD_course_project.txt

For further clarity, please see the comments in the code. 
