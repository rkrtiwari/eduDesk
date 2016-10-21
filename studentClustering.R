##########################################################################################
# Data Processing for clustering
##########################################################################################

# x is a data frame that will store students marks for each topic
## Initializing x
x <- data.frame(matrix(nrow=50, ncol=5))
tnames <- paste('t', 1:5, sep= '')
names(x) <- tnames

## Assigning the values in x
for (i in 1:ns){
  x[i,] <- tapply(tresult[,i],tresult[,51], sum)
}

## Before clustering all the topic scores have been scaled so that there values
## lies between 0 and 1.

### Function used for scaling
myScale <- function(x){
  (x - min(x))/(max(x) - min(x))
}

### Scaling of the data set
x1 <- sapply(x,myScale)

### Creation of 3 clusters
clst <- kmeans(x1, centers = 3, nstart = 10)


############################################################################
# Cluster Plotting. Three different colors corresponds to three different
# clusters. 
############################################################################
#install.packages('fmsb')
library(fmsb)
y <- rbind(rep(1,5), rep(0,5), data.frame(clst$centers))
radarchart(y) 

##########################################################################
# Accessing students belonging to a given cluster
##########################################################################
data.frame(snames, clst$cluster)





