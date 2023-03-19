n <- 10
x <- seq(1, n)
sum(x)

#Which of the following will always return the numeric value stored in x? You can try out
#examples and use the help system if you want.

a<-log(10^x)
b<-log10(x^10)
c<-log(exp(x))
d<-exp(log(x, base = 2))
