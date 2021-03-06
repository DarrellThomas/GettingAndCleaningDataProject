==================================================================

# Human Activity Recognition Using Smartphones Dataset #

Version 1.0

modified by Darrell Thomas for Coursara.org

Getting and Cleaning Data coursework project

==================================================================

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 



The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The original data was cleaned and manipulated as follows:  the two datasets were merged (the training dataset and the test dataset).  Then, only columns that included "mean" or "standard deviation" were included.  Subsequently the data was labeled according to activity, then grouped by subject and activity.  Once in these groups, the mean was taken of each variable (column) for each of the 180 subject/activity pairings.  


The dataset includes the following files (along with the original dataset documentation):

=========================================



- 'README.txt'  (this file you are reading)



- 'codebook.txt': Shows information about the variables used on the feature vector.



- 'run_analysis.R': The source code to accomplish the data manipulation.  The source code is heavily commented, and should be easy to follow.


Notes: 

======

- Features are normalized and bounded within [-1,1].

- Each feature vector is a row on the text file.



For more information about this dataset contact: activityrecognition@smartlab.ws



License:

========

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012



This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.



Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.