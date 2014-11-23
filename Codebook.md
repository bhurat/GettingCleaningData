## Course Project Codebook

I read the files subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, y_train.txt, and features.txt. I bound the first three together by column and the next three as well. For both data frames, I changed the names of the first two columns to “subject” and “activity” and then used the features.txt file to name the remaining columns. I then bound the two data frames into one by row. 

From there, subsetted only the columns dealing with means and changed the activity numbers to the names they represent. 

From there, I created a new table which summarized each column by taking the mean of each column based on subject # and the activity they were doing. The table is sorted by subject #

### column variables
1      "Subject”

2      "Activity"

3      "Body Acceleration mean - X"

4      "Body Acceleration mean - Y"

5      "Body Acceleration mean - Z"

6      "Body Acceleration Standard Deviation - X"

7      "Body Acceleration Standard Deviation - Y"

8      "Body Acceleration Standard Deviation - Z"

9      "Gravity Acceleration mean - X"

10      "Gravity Acceleration mean - Y"

11      "Gravity Acceleration mean - Z"

12      "Gravity Acceleration Standard Deviation - X"

13      "Gravity Acceleration Standard Deviation - Y"

14      "Gravity Acceleration Standard Deviation - Z"

15      "Body Acceleration Jerk mean - X"

16      "Body Acceleration Jerk mean - Y"

17      "Body Acceleration Jerk mean - Z"

18      "Body Acceleration Jerk Standard Deviation - X"

19      "Body Acceleration Jerk Standard Deviation - Y"

20      "Body Acceleration Jerk Standard Deviation - Z"

21      "Body Gyro mean - X"

22      "Body Gyro mean - Y"

23      "Body Gyro mean - Z"

24      "Body Gyro Standard Deviation - X"

25      "Body Gyro Standard Deviation - Y"

26      "Body Gyro Standard Deviation - Z"

27      "Body Gyro Jerk mean - X"

28      "Body Gyro Jerk mean - Y"

29      "Body Gyro Jerk mean - Z"

30      "Body Gyro Jerk Standard Deviation - X"

31      "Body Gyro Jerk Standard Deviation - Y"

32      "Body Gyro Jerk Standard Deviation - Z"

33      "Body Acceleration Magnitude mean"

34      "Body Acceleration Magnitude Standard Deviation"

35      "Gravity Acceleration Magnitude mean"

36      "Gravity Acceleration Magnitude Standard Deviation"

37      "Body Acceleration Jerk Magnitude mean"

38      "Body Acceleration Jerk Magnitude Standard Deviation"

39      "Body Gyro Magnitude mean"

40      "Body Gyro Magnitude Standard Deviation"

41      "Body Gyro Jerk Magnitude mean"

42      "Body Gyro Jerk Magnitude Standard Deviation"

43      "FFT Body Acceleration mean - X"

44      "FFT Body Acceleration mean - Y"

45      "FFT Body Acceleration mean - Z"

46      "FFT Body Acceleration Standard Deviation - X"

47      "FFT Body Acceleration Standard Deviation - Y"

48      "FFT Body Acceleration Standard Deviation - Z"

49      "FFT Body Acceleration Jerk mean - X"

50      "FFT Body Acceleration Jerk mean - Y"

51      "FFT Body Acceleration Jerk mean - Z"

52      "FFT Body Acceleration Jerk Standard Deviation - X"

53      "FFT Body Acceleration Jerk Standard Deviation - Y"

54      "FFT Body Acceleration Jerk Standard Deviation - Z"

55      "FFT Body Gyro mean - X"

56      "FFT Body Gyro mean - Y"

57      "FFT Body Gyro mean - Z"

58      "FFT Body Gyro Standard Deviation - X"

59      "FFT Body Gyro Standard Deviation - Y"

60      "FFT Body Gyro Standard Deviation - Z"

61      "FFT Body Acceleration Magnitude mean"

62      "FFT Body Acceleration Magnitude Standard Deviation”

63      "FFT Body Acceleration Jerk Magnitude mean"

64      "FFT Body Acceleration Jerk Magnitude Standard Deviation"

65      "FFT Body Gyro Magnitude mean"

66      "FFT Body Gyro Magnitude Standard Deviation"

67      "FFT Body Gyro Jerk Magnitude mean"

68      "FFT Body Gyro Jerk Magnitude Standard Deviation"
