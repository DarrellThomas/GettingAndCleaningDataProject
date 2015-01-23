# library calls for needed packages
library(dplyr)

# a simple function to download and unzip the file from the internet.  Only used if the unzipped folder is not present
download.and.unzip <- function(url){
   
           # download the zipped file, and place it in file called Dataset.zip in the current directory
           download.file(url,
                         destfile = "./Dataset.zip", 
                         quiet = TRUE)
           
           # extract to a folder called /UCI Har Dataset
           unzip("Dataset.zip",
                 files = NULL,
                 list = FALSE,
                 overwrite = TRUE,
                 junkpaths = FALSE,
                 exdir = ".",
                 unzip = "internal",
                 setTimes = FALSE)
 }

# check to see if the directory already exists.
  if (!file.exists("./UCI Har Dataset")) {
    my_url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.and.unzip(my_url)    
  }


    # read the activity labels:  this is just the 6 different activities.  Will use this to change the activitynumbers
    # into these names.  Better to do it this way, so there is just one place to modify the activity labels if required.
      activity.labels <- read.table("./UCI Har Dataset/activity_labels.txt")
    
    # make them all lower case
        activity.labels[ , 2] <- tolower(as.character(activity.labels[ ,2]))
    
    # take out any underscores, replace with a space
        activity.labels[ , 2] <- gsub("_", " ", activity.labels[ ,2])
  
    # change "laying" to "laying down
        activity.labels[ , 2] <- gsub("laying", "laying down", activity.labels[ ,2])            
 
# 4.  read the labels from the features.txt file (will go ahead and clean it up here too.. step #4)#########
    # format the labels here: lots of format changes just to clean it up a bit.
    # take out "Body" and "Gravity" change mean to *space* mean, change std to std.dev, take out the () 
    # note the \\ escape characters required, take out dashes, and change any double spaces to single space,
    # change any double periods to single periods..
    # any other formating changes to the column labels should go here.
      labels <- read.table("./UCI Har Dataset/features.txt")
        labels[ ,2] <- sub("Body"     , " "       , labels[ ,2])
        labels[ ,2] <- sub("Body"     , " "       , labels[ ,2])
        labels[ ,2] <- sub("Gravity"  , " "       , labels[ ,2])
        labels[ ,2] <- sub("Gravity"  , " "       , labels[ ,2])
        labels[ ,2] <- sub("mean"      , " mean"  , labels[ ,2])
        labels[ ,2] <- sub("std"       , " std.dev"  , labels[ ,2])
        labels[ ,2] <- sub("\\(\\)-" , " "        , labels[ ,2])
        labels[ ,2] <- sub("\\(\\)"  , " "        , labels[ ,2])
        labels[ ,2] <- sub("-"         , " "      , labels[ ,2])
        labels[ ,2] <- sub("  "        , " "      , labels[ ,2])
        labels[ ,2] <- sub("\\.\\."        , "\\."      , labels[ ,2])
        labels[ ,2] <- tolower(as.character(labels[ ,2]))

    # read in the X values from the training set#############################################################
      x.train             <- read.table("./UCI Har Dataset/train/X_train.txt",
                                  col.names = labels[ ,2])


    # read in the Y values from the training set, (activity code)
      activity.train       <- read.table("./UCI Har Dataset/train/Y_train.txt",
                                  col.names = "activity")
      
    # read the variable for which subject is being measured, give the column name "subject"
      subject.train <- read.table("./UCI Har Dataset/train/subject_train.txt",
                                  col.names = "subject")
  
    # do exactly the same for the test set...################################################################
      x.test               <- read.table("./UCI Har Dataset/test/X_test.txt",
                                  col.names = labels[ ,2])

      activity.test        <- read.table("./UCI Har Dataset/test/Y_test.txt",
                                  col.names = "activity")
   
      subject.test         <- read.table("./UCI Har Dataset/test/subject_test.txt",
                                  col.names = "subject")
   
# 3.  Uses descriptive activity names to name each activies in the dataset#################################
      # this uses the activity labels and changes the numbers to the more meaningful version
      # this is just a loop that takes index from 1, 6, going through all the index numbers and 
      # changing from the number to the associated name based on the table previously loaded from activity_labels.txt
      index <- 1    
      for (each.activity in activity.labels[,2]) {
                activity.train[activity.train == index] <- each.activity
                index <- index + 1
      }       

      # do the same thing again to the test dataset..  I know.. prob could have combined the two tables first, then 
      # manipulated the data only once... I was too far down the road to change it 
      index <- 1    
      for (each.activity in activity.labels[,2]) {
                activity.test[activity.test == index] <- each.activity
                index <- index + 1
      }
 
    # append the subject, activity, the 561 X columns:  
      train.set <- cbind(subject.train, activity.train,  x.train)
      test.set  <- cbind(subject.test , activity.test ,  x.test )
      

# 1.merge the training and test set to create one data set###################################################
      # could have done this first, but didnt for some reason.
      one.data.set <- rbind(train.set, test.set)
      one.data.set$activity <- as.factor(one.data.set$activity)
      one.data.set$subject  <- as.factor(one.data.set$subject)


# 2. Extract only the measurements on the mean and standard deviation for each measurement    
      x.data.1 <- one.data.set[ , grep(pattern = "std.dev",  names(one.data.set))]
      x.data.2 <- one.data.set[ , grep(pattern = "mean", names(one.data.set))]
      x.data   <- cbind(one.data.set[ , 1:2], x.data.1 , x.data.2)



# 5.  from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
      tidy.data <- group_by(x.data, subject, activity) %>% summarise_each(funs(mean))
      write.table(tidy.data, file = "./tidydata.txt", row.name = FALSE)
      write.table(names(tidy.data), file = "./codebook.txt", row.name = FALSE)












