#########################################################################
# Create some dummy data for the time allocation for a given topic
##########################################################################
tme <- c(0.2, 0.3, 0.1, 0.25, 0.15)

## I am creating the priority list for the student number 5
ind <- 5
x[ind,] ## Marks for student 5
timp <- tab1/sum(tab1) ## Relative importance in the final IB exam

nscore <- x[ind,]*tme/timp
nscore

## Priority score. At the top is the topic that requires the most attention
t(sort(nscore, decreasing = TRUE))
