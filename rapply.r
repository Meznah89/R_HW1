#rapply
l<- list(a=1:5,b=1:9)
rapply_function <-rapply(l,mean)
#########
# Equivalent function for rapply
myfunction= function(l){for(i in l){
 a=mean(l$a)
 b=mean(l$b)
}
rowMeans=(cbind(a, b))
return(rowMeans)
}
myfunction(l)
#######
#The performance of (rapply & myfunction) can be compared using microbenchmark:
library(microbenchmark)
library(ggplot2)

result = microbenchmark (rapply_function ,myfunction(l))
result
autoplot(result)
