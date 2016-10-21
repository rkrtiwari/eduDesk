## Data reading from the file
tresult <- read.table("result.txt", header = TRUE, sep = ",")
head(tresult)

## Finding score of each student
colSums(tresult[,1:50])
