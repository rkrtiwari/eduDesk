########################################################################
# Create dummy data of expected score
###########################################################################

marks <- colSums(tresult[,1:50])

## generate expected marks
set.seed(500)
expected <- marks + sample(-10:10, size = 50, replace = TRUE)


#####################################################################
## Plotting
m1 <- lm(expected ~ marks) # making a linear model
x <- 0:100
y <- coef(m1)[1] + x*coef(m1)[2]
plot(marks, expected, xlab = '% attendence', ylab = 'Marks')
lines(x,y, col='blue')

