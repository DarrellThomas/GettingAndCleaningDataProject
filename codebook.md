
# Summary #

The original data was cleaned and manipulated as follows:  the two datasets were merged (the training dataset and the test dataset).  Then, only columns that included "mean" or "standard deviation" were included.  Subsequently the data was labeled according to activity, then grouped by subject and activity.  Once in these groups, the mean was taken of each variable (column) for each of the 180 subject/activity pairings.  



## variables: ##


*"subject"  
the identifier of who is being tested.. values from 1-30 for each of the 30 people accomplishing the test

"activity"
the activity that subject was doing when the measurments were taken

For each of the following measurements, the following will be helpful:  All values are the "mean" for each group, for the specified column. 

The "t" prefix will indicate a time measurement, and the "f" prefix will indicate frequency. 

"acc" indicates an acceleration measurement

"accjerk" indicates the acceleration of the acceleration (the next derivative).. commonly called "jerk"


"gyro" indicates a gyro measurement

"mag" indicates a magnetic measurment

"angle" indicates an angular measurement

"std.dev" indicates the column was a standard deviation

"mean" indicates the column was a "mean"

"x", "y", "or "z" indicates the axis (if any)*


## All of the colunm names are listed below: ##

"t.acc.std.dev.x"

"t.acc.std.dev.y"

"t.acc.std.dev.z"

"t.acc.std.dev.x.1"

"t.acc.std.dev.y.1"

"t.acc.std.dev.z.1"

"t.accjerk.std.dev.x"

"t.accjerk.std.dev.y"

"t.accjerk.std.dev.z"

"t.gyro.std.dev.x"

"t.gyro.std.dev.y"

"t.gyro.std.dev.z"

"t.gyrojerk.std.dev.x"

"t.gyrojerk.std.dev.y"

"t.gyrojerk.std.dev.z"

"t.accmag.std.dev."

"t.accmag.std.dev..1"

"t.accjerkmag.std.dev."

"t.gyromag.std.dev."

"t.gyrojerkmag.std.dev."

"f.acc.std.dev.x"

"f.acc.std.dev.y"

"f.acc.std.dev.z"

"f.accjerk.std.dev.x"

"f.accjerk.std.dev.y"

"f.accjerk.std.dev.z"

"f.gyro.std.dev.x"

"f.gyro.std.dev.y"

"f.gyro.std.dev.z"

"f.accmag.std.dev."

"f.accjerkmag..std.dev."

"f.gyromag..std.dev."

"f.gyrojerkmag..std.dev."

"t.acc.mean.x"

"t.acc.mean.y"

"t.acc.mean.z"

"t.acc.mean.x.1"

"t.acc.mean.y.1"

"t.acc.mean.z.1"

"t.accjerk.mean.x"

"t.accjerk.mean.y"

"t.accjerk.mean.z"

"t.gyro.mean.x"

"t.gyro.mean.y"

"t.gyro.mean.z"

"t.gyrojerk.mean.x"

"t.gyrojerk.mean.y"

"t.gyrojerk.mean.z"

"t.accmag.mean."

"t.accmag.mean..1"

"t.accjerkmag.mean."

"t.gyromag.mean."

"t.gyrojerkmag.mean."

"f.acc.mean.x"

"f.acc.mean.y"

"f.acc.mean.z"

"f.acc.meanfreq.x"

"f.acc.meanfreq.y"

"f.acc.meanfreq.z"

"f.accjerk.mean.x"

"f.accjerk.mean.y"

"f.accjerk.mean.z"

"f.accjerk.meanfreq.x"

"f.accjerk.meanfreq.y"

"f.accjerk.meanfreq.z"

"f.gyro.mean.x"

"f.gyro.mean.y"

"f.gyro.mean.z"

"f.gyro.meanfreq.x"

"f.gyro.meanfreq.y"

"f.gyro.meanfreq.z"

"f.accmag.mean."

"f.accmag.meanfreq."

"f.accjerkmag..mean."

"f.accjerkmag..meanfreq."

"f.gyromag..mean."

"f.gyromag..meanfreq."

"f.gyrojerkmag..mean."

"f.gyrojerkmag..meanfreq."

"angle.t.accmean.gravity."

"angle.t.accjerkmean..gravitymean."

"angle.t.gyromean.gravitymean."

"angle.t.gyrojerkmean.gravitymean."

"angle.x.gravitymean."

"angle.y.gravitymean."

"angle.z.gravitymean."

