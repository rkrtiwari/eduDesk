##########################################################################################
# Dummy attendence data creation
##########################################################################################
marks <- colSums(tresult[,1:50])

## generate 50 attendance 
attend <- marks + sample(-10:10, size = 50, replace = TRUE)


#####################################################################
## Plotting
m1 <- lm(marks~attend) # making a linear model
x <- 0:100
y <- coef(m1)[1] + x*coef(m1)[2]
plot(attend, marks, xlab = '% attendence', ylab = 'Marks')
lines(x,y, col='blue')




