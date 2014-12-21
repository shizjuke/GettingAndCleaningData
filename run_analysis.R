# This R script, called run_analysis.R, does the following:

# - Appropriately labels the data set with descriptive variable names. 
# - Extracts only the measurements on the mean and standard deviation for each measurement. 
# - Uses descriptive activity names to name the activities in the data set
# - Merges the training and the test sets to create one data set.
# - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# - Write created tidy data set to the file

# read list of all features from file
features <- read.table("UCI HAR Dataset/features.txt")

# read training set from file
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
# read training labels from file
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

# read test set from file
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
# read test labels from file
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# labels the train data set with descriptive variable names
colnames(X_train) <- features[[2]]
# labels the test data set with descriptive variable names
colnames(X_test) <- features[[2]]

# Extracts only the measurements on the mean and standard deviation for each measurement in train data set
X_train <- X_train[,grep("mean\\(\\)|std\\(\\)", colnames(X_train))]
# Extracts only the measurements on the mean and standard deviation for each measurement in test data set
X_test <- X_test[,grep("mean\\(\\)|std\\(\\)", colnames(X_test))]

# read activity labels from file
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# add column with descriptive activity names to name the activities in the data set
X_train$activity_label <- activity_labels[y_train[[1]] ,2]
# add column with descriptive activity names to name the activities in the data set
X_test$activity_label <- activity_labels[y_test[[1]] ,2]

# read from file subjects who performed the activity in training set
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
# read from file subjects who performed the activity in test set
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# add column with subject identifier who performed the activity in train set
X_train$subject_id <- subject_train[[1]]
# add column with subject identifier who performed the activity in test set
X_test$subject_id <- subject_test[[1]]

# Merge the training and the test sets
data <- rbind(X_train, X_test)

#calculate average of each variable for each activity and each subject
tidy <- aggregate(data[,1:66],by=list(subject_id = data$subject_id, activity_label = data$activity_label), mean)

#write tidy data to the file
write.table(tidy, file = "tidy.txt", row.name=FALSE)