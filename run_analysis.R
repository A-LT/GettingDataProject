getwd()
setwd("./UCI HAR Dataset")
dir()

library(dplyr)
library(reshape2)

#combine all subjects into one data frame
sub_train <- read.table("./subject_train.txt")
sub_test <- read.table("./subject_test.txt")
subjects <- rbind(sub_train, sub_test)
colnames(subjects) <- c("Subject")

#combine all activities into one dat frame
act_train <- read.table("./y_train.txt")
act_test <- read.table("./y_test.txt")
activity <- rbind(act_train, act_test)
colnames(activity) <- c("Activity")

#replace values in activities with variable names
activity$Activity <-factor(activity$Activity, labels = c("Walking", "Walking_Up", "Walking_Down","Sitting", "Standing", "Laying"))

#combining the two train and text data
train <- read.table("./X_train.txt")
test <-read.table("./X_test.txt")
specs <- rbind(train, test)

#extracting the column names from features then finding only the indices for the mean and standard deviation 
feature_colnames <-read.table("./features.txt")
f_mean <- grep("mean", feature_colnames$V2)
f_sd <-grep("std", feature_colnames$V2)
features <- sort(c(f_mean, f_sd))


#selecting only the desired features
f_data <- select(specs, features)
colnames(f_data) <- make.names(feature_colnames[features, "V2"])

#combining all the data into one data frame
all_data <- cbind(subjects, activity, f_data)

#make a tall data frame with four columns
tall_data <- melt(all_data, id = c("Subject", "Activity"), measure.var = (3:81))

#take the mean of each variable depending on the subject and activity being done
final <- dcast(tall_data, Subject + Activity ~ variable, mean)

write.table(final, file = "GD_course_project.txt", row.name = FALSE)
