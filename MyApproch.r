#### MICE PACKAGE ###
library(mice)
library(class)
library(missForest)
library(caret)


MissingData <-iris
#Calculate the mean and standard deviationfor each atte in iris dataset
mu.sl=median(MissingData$Sepal.Length)
mu.sw=median(MissingData$Sepal.Width)
mu.pl=median(MissingData$Petal.Length)
mu.pw=median(MissingData$Petal.Width)
sd.sl=sd(MissingData$Sepal.Length)
sd.sw=sd(MissingData$Sepal.Width) 
sd.pl=sd(MissingData$Petal.Length)
sd.pw=sd(MissingData$Petal.Width)

# finding the Sepal.Length and Sepal.Width that less than the (median - standard deviation)
s.bool <- (MissingData$Sepal.Length < (mu.sl - 1*sd.sl)) & (MissingData$Sepal.Width < (mu.sw - sd.sw))

# finding the Petal.Length and Petal.Width that greatar than the (mean + standard deviation)
p.bool <- (MissingData$Petal.Length > (mu.pl + 1*sd.pl)) & (MissingData$Petal.Width > (mu.pw + sd.pw))

MissingData$Sepal.Length[sl.bool] <- NA
MissingData$Sepal.Width[sw.bool] <- NA
MissingData$Petal.Length[pl.bool] <- NA
MissingData$Petal.Width[pw.bool] <- NA


MissingData<- MissingData[-5] 
MyData<-iris

#using mic to impute iris Data set
#using method pmm (Predictive Mean Matching) for numeric variables
ImputedData <- mice(MissingData, m=3, maxit = 20, method = 'pmm', seed = 222)
MytestData <- complete(ImputedData,1) #testdata 
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look the performance of k-NN classifier
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)


#### AMELIA PAKAGE #####

library(Amelia)
library(class)
library(caret)

MissingData <-iris
#Calculate the mean and standard deviationfor each atte in iris dataset
mu.sl=median(MissingData$Sepal.Length)
mu.sw=median(MissingData$Sepal.Width)
mu.pl=median(MissingData$Petal.Length)
mu.pw=median(MissingData$Petal.Width)
sd.sl=sd(MissingData$Sepal.Length)
sd.sw=sd(MissingData$Sepal.Width) 
sd.pl=sd(MissingData$Petal.Length)
sd.pw=sd(MissingData$Petal.Width)

# finding the Sepal.Length and Sepal.Width that less than the (median - standard deviation)
s.bool <- (MissingData$Sepal.Length < (mu.sl - 1*sd.sl)) & (MissingData$Sepal.Width < (mu.sw - sd.sw))

# finding the Petal.Length and Petal.Width that greatar than the (mean + standard deviation)
p.bool <- (MissingData$Petal.Length > (mu.pl + 1*sd.pl)) & (MissingData$Petal.Width > (mu.pw + sd.pw))

MissingData$Sepal.Length[sl.bool] <- NA
MissingData$Sepal.Width[sw.bool] <- NA
MissingData$Petal.Length[pl.bool] <- NA
MissingData$Petal.Width[pw.bool] <- NA



MissingData<- MissingData[-5] 
MyData<-iris


#using amelia to impute iris Data set, 
ImputedData <- amelia(MissingData, m=3, parallel = "multicore") 
#selecting dataset#2  as tes
MytestData<-ImputedData$imputations[[2]]
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species, k = 3, prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)



### MISSFOREST ###

library(missForest)
library(class)
library(caret)
MissingData <-iris
#Calculate the mean and standard deviationfor each atte in iris dataset
mu.sl=median(MissingData$Sepal.Length)
mu.sw=median(MissingData$Sepal.Width)
mu.pl=median(MissingData$Petal.Length)
mu.pw=median(MissingData$Petal.Width)
sd.sl=sd(MissingData$Sepal.Length)
sd.sw=sd(MissingData$Sepal.Width) 
sd.pl=sd(MissingData$Petal.Length)
sd.pw=sd(MissingData$Petal.Width)

# finding the Sepal.Length and Sepal.Width that less than the (median - standard deviation)
s.bool <- (MissingData$Sepal.Length < (mu.sl - 1*sd.sl)) & (MissingData$Sepal.Width < (mu.sw - sd.sw))

# finding the Petal.Length and Petal.Width that greatar than the (mean + standard deviation)
p.bool <- (MissingData$Petal.Length > (mu.pl + 1*sd.pl)) & (MissingData$Petal.Width > (mu.pw + sd.pw))

MissingData$Sepal.Length[sl.bool] <- NA
MissingData$Sepal.Width[sw.bool] <- NA
MissingData$Petal.Length[pl.bool] <- NA
MissingData$Petal.Width[pw.bool] <- NA



MissingData<- MissingData[-5] 
MyData<-iris

#using missForest to impute iris Data set
ImputedData <- missForest(MissingData, maxiter=20)
MytestData <- ImputedData$ximp #testdata 
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)



### HMISC ###

library(missForest)
library(class)
library(caret)
MissingData <-iris
#Calculate the mean and standard deviationfor each atte in iris dataset
mu.sl=median(MissingData$Sepal.Length)
mu.sw=median(MissingData$Sepal.Width)
mu.pl=median(MissingData$Petal.Length)
mu.pw=median(MissingData$Petal.Width)
sd.sl=sd(MissingData$Sepal.Length)
sd.sw=sd(MissingData$Sepal.Width) 
sd.pl=sd(MissingData$Petal.Length)
sd.pw=sd(MissingData$Petal.Width)

# finding the Sepal.Length and Sepal.Width that less than the (median - standard deviation)
s.bool <- (MissingData$Sepal.Length < (mu.sl - 1*sd.sl)) & (MissingData$Sepal.Width < (mu.sw - sd.sw))

# finding the Petal.Length and Petal.Width that greatar than the (mean + standard deviation)
p.bool <- (MissingData$Petal.Length > (mu.pl + 1*sd.pl)) & (MissingData$Petal.Width > (mu.pw + sd.pw))

MissingData$Sepal.Length[sl.bool] <- NA
MissingData$Sepal.Width[sw.bool] <- NA
MissingData$Petal.Length[pl.bool] <- NA
MissingData$Petal.Width[pw.bool] <- NA


MissingData<- MissingData[-5] 
MyData<-iris

#using impute function to impute iris Data set
MissingData$Sepal.Length <- with(MissingData, impute(Sepal.Length, mean))
MissingData$Sepal.Width <- with(MissingData, impute(Sepal.Width, mean))
MissingData$Petal.Length <- with(MissingData, impute(Petal.Length, mean))
MissingData$Petal.Width <- with(MissingData, impute(Petal.Length, mean))
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MissingData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MissingData
RMSE(MyData[-5],MissingData)
