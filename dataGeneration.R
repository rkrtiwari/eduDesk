##########################################################################################
# Dummy data creation
##########################################################################################
## generate 50 Names
ns <- 50   # number of students
snames <- paste('s',1:50, sep="")  # 50 names generated s1, s2,...s50
snames

## generate 5 tag names 
nt <- 5
tnames <- paste('t', 1:5, sep= '')
tnames

## generate tags for 40 questions
nq <- 40
prb <- c(0.4, 0.3, 0.15, 0.08, 0.07) # probabilities of questions of diff tags
set.seed(100)
qt <- sample(tnames, size = 40, replace = TRUE, prob = prb)
table(qt)

## create a matrix to store students response correctness. Each column stores the
## whether the response was right or wrong for a given student. On an average students 
# scored 60%
set.seed(100)
ans <- sample(c(TRUE, FALSE), size = nq*ns, replace = TRUE, prob = c(0.6,0.4))
ans <- matrix(ans, ncol=ns)
colnames(ans) <- snames
rownames(ans) <- 1:nq

## write out the students response in a file
ansTag <- data.frame(ans,qt)
write.table(ansTag, 'result.txt', sep = ',')






