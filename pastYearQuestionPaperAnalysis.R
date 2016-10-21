##########################################################################################
# Dummy data creation
##########################################################################################
## generate 5 topic Names
tnames <- paste('t',1:5, sep='')
pro <- sample(1:10, size = 5) # probabilities of different tags 

## Assign a tag name to each of the hypothetical 5000 questions that
## were asked in past 15 years
qtags <- sample(tnames, size = 5000, prob = pro, replace = TRUE)

## Tabulate the data
tab1 <- table(qtags)

## Plot the bar plot
barplot(tab1/sum(tab1), ylab = 'Relative Frequency')

