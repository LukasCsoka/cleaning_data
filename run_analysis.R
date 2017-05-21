rm(list=ls()) ## clean memory
gc() ## garbage collect memory

# Merge the training and the test data

x1 <- read.table("train/X_train.txt")
x2 <- read.table("test/X_test.txt")
X <- rbind(x1, x2)

s1 <- read.table("train/subject_train.txt")
s2 <- read.table("test/subject_test.txt")
S <- rbind(s1, s2)

y1 <- read.table("train/y_train.txt")
y2 <- read.table("test/y_test.txt")
Y <- rbind(y1, y2)

rm(x1,x2,y1,y2,s1,s2)

# Extract mean and standard deviation

feat <- read.table("features.txt")
indices <- grep("-mean\\(\\)|-std\\(\\)", feat[, 2]) # find indices of mean and std
X <- X[, indices] #select only mean and std
names(X) <- feat[indices, 2]
names(X) <- gsub("\\(|\\)", "", tolower(names(X))) # remove "\\(|\\)" and lower chars

rm(indices,feat)

# Use descriptive activity names and label the data

activ <- read.table("activity_labels.txt")
activ[, 2] = gsub("_", "", tolower(as.character(activ[, 2]))) # remove "_" and lower chars
Y[,1] = activ[Y[,1], 2] #update Y based on activities names

names(Y) <- "activity"
names(S) <- "subject"

final <- cbind(S, Y, X)
write.table(final, "final_data.txt")

# Independent tidy data set

sub <- unique(S)[,1] # get unique subjects
indep <- final[1:(30*6), ] # here we save the avg data

row <- 1
for (i in 1:30) { # 1:30 subjects
  for (j in 1:6) {# 1:6 activities per subject
    indep[row, 1] <- sub[i] # set id of subject
    indep[row, 2] <- activ[j, 2] # set activity name
    tmp <- final[final$subject==i & final$activity==activ[j, 2], ] # get data of subjects activity
    indep[row, 3:ncol(final)] <- colMeans(tmp[, 3:ncol(final)]) # compute mean of subjects activity
    row <- row+1
  }
}

write.table(indep, "avg_data.txt")
#write.table(row.name=FALSE, indep, "avg_data.txt")
rm(activ, tmp, j,i,row,sub)

