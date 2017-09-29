#tapply
 v<-1:25
 f<- factor(rep(1:5, times = 5))
 #Add up the values in v within each subgroup defined by f
 tapply_function<- tapply(v, f, sum) 
 tapply_function
 ############################################################
# Equivalent function for tapply
 myfunction=function(f){
   for(i in 1:5)
   {  sum[i]<-0
   }
   for(i in v){
     if(f[i]==1)
     {sum[j] = sum[j]+i}
     else if (f[i]==2)
     {sum[2] = sum[2]+i}
     else if (f[i]==3)
     {sum[3] = sum[3]+i}
     else if (f[i]==4)
     {sum[4] = sum[4]+i}
     else 
     {sum[5] = sum[5]+i}
   }
   return(sum)
 }
 myfunction(f)
 
 ############################################################ 
 #The performance of (tapply & myfunction) can be compared using microbenchmark:
 library(microbenchmark)
 library(ggplot2)

 result = microbenchmark (tapply_function, myfunction(f))
 result
 boxplot(result)
 

