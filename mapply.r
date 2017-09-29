
#mapply() applies the summation function to each pair in A and B vector.
A = 0:5
B = c(2, 4, 6, 8, 9, 10)
mapply_fuction <-mapply(function(x, y) sum(x, y), A, B)
mapply_fuction
############################################################
# Equivalent function for mapply
myfunction=function(A,B){
sum=0
n<-for(i in A)
{for(j in B)
{ sum=A+B}
}
return(sum)}
myfunction(A,B)
############################################################
#The performance of (mapply & myfunction) can be compared using microbenchmark:
library(microbenchmark)
library(ggplot2)

result = microbenchmark (mapply_fuction,myfunction(A,B))
result
autoplot(result)

