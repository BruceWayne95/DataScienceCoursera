---
title: "README"
author: "Aniruddha Shinde"
date: "3 November 2020"
output: md_document:
    variant: markdown_github
---


The CodeBook.md file gives a description about the variables in the tidy data set.

Using run-analysis.R, messy UCI data will be converted into a tidy data set.

Following are the steps that I followed to convert messy data into tidy data:

1. Created the train data table.

2. Created the test data table.

3. Merged these two tables into one using rbind().

4. Extracted columns which have "mean" or "std" in their names using grep().

5. Converted the "Activity" column (which has numbers) into a factor column.

6. Changed all numbers in "Activity" column to their respective factor labels.

7. Changed all variable names to appropriate column headings.

8. Finally, created the tidy data by grouping records by "Subject" and "Activity", and calculated their mean.

9. The code will write the tidy data to a text file called "UCI Tidy Dataset.txt"

NOTE: If you want to load the data from the text file into R again, use the following code:

View(read.table("UCI Tidy Dataset.txt", header = TRUE))