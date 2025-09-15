setwd("C:\\Users\\ashen\\OneDrive\\Desktop\\IT24103080")
getwd()

#Question 1
#Part 1
# X has binomial distribution withn=50 and p=0.85

#Part 2
1-pbinom(46,50,0.85,lower.tail=TRUE)
pbinom(46,50,0.85,lower.tail=FALSE)

#Question 2
# Part 1
#Number of customer calls per hour

#Part 2
#Poisson distribution
#Here , random variable x has poisson distribution with lambda=12

#Part 3
dpois(15,12)
