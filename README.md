#README
First the program reads the data files and stores them into two data frames testdata and traindata. From there, it uses the features file to name the data frames, though it names the first two columns "subject" and "activity". From there, it combines them into totaldata with rbind. 
It then uses a 'for' loop to rename the activity values from their numeric value to what those values represent. 
Then, it has two for loops. The outer one goes from 1:30(subject number) and the inner one goes through the activity names. From each, it gets the mean of each column and adds it to a new data frame called summData via the rbind function. The last part renames the columns to something more descriptive and orders the rows by subject number. 
Lastly it writes it into a txt file called CleanData
