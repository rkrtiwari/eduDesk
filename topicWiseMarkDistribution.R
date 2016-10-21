###########################################################################
# Creating a matrix x that stores data for all the students for each tag type
############################################################################
tnames <- paste('t', 1:5, sep= '')
x <- data.frame(matrix(nrow=50, ncol=5))  
names(x) <- tnames

for (i in 1:ns){
  x[i,] <- tapply(tresult[,i],tresult[,51], sum)
}

## Plotting the overall and ith student performance
i <- 5
t(x[i,])
boxplot(x, xlab = 'Tag Name', ylab = 'Marks')
points(t(x[i,]), col = 'red', pch = 15)


