library(dplyr)

##Merging train and test data
xTraindt <- read.table("train\\x_train.txt")
cols <- read.table("features.txt")
names(xTraindt) <- cols$V2

yTraindt <- read.table("train\\y_train.txt")
names(yTraindt)[names(yTraindt) == "V1"] <- "Activity"

subjTraindt <- read.table("train\\subject_train.txt")
names(subjTraindt)[names(subjTraindt) == "V1"] <- "Subject"

traindt <- cbind(subjTraindt, yTraindt, xTraindt)

xTestdt <- read.table("test\\x_test.txt")
names(xTestdt) <- cols$V2

yTestdt <- read.table("test\\y_test.txt")
names(yTestdt)[names(yTestdt) == "V1"] <- "Activity"

subjTestdt <- read.table("test\\subject_test.txt")
names(subjTestdt)[names(subjTestdt) == "V1"] <- "Subject"

testdt <- cbind(subjTestdt, yTestdt, xTestdt)

testTrainMerged <- rbind(traindt, testdt)

##Extract columns containing 'mean'and 'std'
cnames <- grep("\\bmean\\b|\\bstd\\b", names(testTrainMerged), value = TRUE)
meanStd <- testTrainMerged[, c("Subject", "Activity", cnames)]
meanStd$Activity <- as.factor(meanStd$Activity)

#Descriptive activity names to name the activities in the data set
actLabelsdt <- read.table("activity_labels.txt")
levels(meanStd$Activity) <- actLabelsdt$V2

#Labeling the data set with descriptive variable names
names(meanStd) <- gsub("-", "", names(meanStd))
names(meanStd) <- gsub("\\(\\)", "", names(meanStd))

##Independent tidy data set with the average of each variable for each activity and each subject
finalTidyData <- meanStd %>% group_by(Subject, Activity) %>% summarise(across(.cols = matches("mean|std"), mean))
write.table(finalTidyData, "UCI Tidy Dataset.txt", row.names = FALSE)








