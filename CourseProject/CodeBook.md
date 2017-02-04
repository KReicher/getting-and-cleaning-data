---
title: "Code Book"
author: "Kristina Reicher"
date: "February 4, 2017"
output:
  html_document: default
  pdf_document: default
---
# Getting and Cleaning Data - Course Project

This code book describes the resulting data in `tidy.txt`.

## Identifiers

* `subject` - The ID of the subject
* `activity`  - The type of activity performed when the corresponding measurements were taken

## Activity Labels

* `WALKING`: subject was walking during the test
* `WALKING_UPSTAIRS`: subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS`: subject was walking down a staircase during the test
* `SITTING`: subject was sitting during the test
* `STANDING`: subject was standing during the test
* `LAYING`: subject was laying down during the test

## Variable names
This is a list of columns(variables) in tidy dataset. `subject`  and `activity` are identifiers, rest of variables are the measurements of the mean and standard deviation for each subject and each activity.

```
1. subject
2. activity
3. tBodyAccMeanX
4. tBodyAccMeanY
5. tBodyAccMeanZ
6. tBodyAccStdX
7. tBodyAccStdY
8. tBodyAccStdZ
9. tGravityAccMeanX
10. tGravityAccMeanY
11. tGravityAccMeanZ
12. tGravityAccStdX
13. tGravityAccStdY
14. tGravityAccStdZ
15. tBodyAccJerkMeanX
16. tBodyAccJerkMeanY
17. tBodyAccJerkMeanZ
18. tBodyAccJerkStdX
19. tBodyAccJerkStdY
20. tBodyAccJerkStdZ
21. tBodyGyroMeanX
22. tBodyGyroMeanY
23. tBodyGyroMeanZ
24. tBodyGyroStdX
25. tBodyGyroStdY
26. tBodyGyroStdZ
27. tBodyGyroJerkMeanX
28. tBodyGyroJerkMeanY
29. tBodyGyroJerkMeanZ
30. tBodyGyroJerkStdX
31. tBodyGyroJerkStdY
32. tBodyGyroJerkStdZ
33. tBodyAccMagMean
34. tBodyAccMagStd
35. tGravityAccMagMean
36. tGravityAccMagStd
37. tBodyAccJerkMagMean
38. tBodyAccJerkMagStd
39. tBodyGyroMagMean
40. tBodyGyroMagStd
41. tBodyGyroJerkMagMean
42. tBodyGyroJerkMagStd
43. fBodyAccMeanX
44. fBodyAccMeanY
45. fBodyAccMeanZ
46. fBodyAccStdX
47. fBodyAccStdY
48. fBodyAccStdZ
49. fBodyAccMeanFreqX
50. fBodyAccMeanFreqY
51. fBodyAccMeanFreqZ
52. fBodyAccJerkMeanX
53. fBodyAccJerkMeanY
54. fBodyAccJerkMeanZ
55. fBodyAccJerkStdX
56. fBodyAccJerkStdY
57. fBodyAccJerkStdZ
58. fBodyAccJerkMeanFreqX
59. fBodyAccJerkMeanFreqY
60. fBodyAccJerkMeanFreqZ
61. fBodyGyroMeanX
62. fBodyGyroMeanY
63. fBodyGyroMeanZ
64. fBodyGyroStdX
65. fBodyGyroStdY
66. fBodyGyroStdZ
67. fBodyGyroMeanFreqX
68. fBodyGyroMeanFreqY
69. fBodyGyroMeanFreqZ
70. fBodyAccMagMean
71. fBodyAccMagStd
72. fBodyAccMagMeanFreq
73. fBodyBodyAccJerkMagMean
74. fBodyBodyAccJerkMagStd
75. fBodyBodyAccJerkMagMeanFreq
76. fBodyBodyGyroMagMean
77. fBodyBodyGyroMagStd
78. fBodyBodyGyroMagMeanFreq
79. fBodyBodyGyroJerkMagMean
80. fBodyBodyGyroJerkMagStd
81. fBodyBodyGyroJerkMagMeanFreq
```


