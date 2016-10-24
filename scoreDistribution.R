## Find the total marks for each student and student's name
marks <- colSums(tresult[,1:50])
student <- names(tresult)
student

######################################################################################## 
## code to find out students that have scored in a given range. It also calculates how many
## students lie in that range
nbins <- 10  # we want 10 partitions
max <- 50   # Maximum Score
min <- 0     # Minimum Score

binsize <- (max-min)/nbins
count <- vector('integer', nbins)  # stores number of students in a given range
group <- vector('list', nbins)     # stores names of students in a given range

for (i in 1:ns){
  x <- marks[i]%/%binsize
  count[x+1] = count[x+1] + 1
  group[[x+1]] = append(group[[x+1]], student[i]) 
}

## Accessing the frequencies and students belonging to a particular group
n = 6
count[n] # number of students who scored between ((n-1)*10 - 1) and n*10
group[n] # name of students who scored between ((n-1)*10 - 1) and n*10

## Testing to check if the code is working fine
ind <- student %in% group[[n]]
student[ind]
marks[ind]

#####################################################################################
## Plotting the histogram
########################################################################################
bpoints <- seq(from= 0, to = 50, by =5)
hist(marks, breaks = bpoints, right = FALSE)
axis(side = 2, at = 0:17)
ind <- which(names(marks)=='s42') # adding score of student named s42
abline(v=marks[ind], col = 'red', lw = 2)  # a line is added to student s42 score



