####### MISSFOREST PACKAGE #######
library(missForest)

MyData <- iris 
#generate random "2%" missing values 
MissingData  <- prodNA(MyData[-5], noNA = 0.02)
#using missForest to impute iris Data set
ImputedData <- missForest(MissingData, maxiter=20)
MytestData <- ImputedData$ximp #testdata 
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)


####### MISSFOREST PACKAGE #######
library(missForest)

MyData <- iris 
#generate random "5%" missing values 
MissingData  <- prodNA(MyData[-5], noNA = 0.05)
#using missForest to impute iris Data set
ImputedData <- missForest(MissingData, maxiter=20)
MytestData <- ImputedData$ximp #testdata 
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)


####### MISSFOREST PACKAGE #######
library(missForest)

MyData <- iris 
#generate random "10%" missing values 
MissingData  <- prodNA(MyData[-5], noNA = 0.1)
#using missForest to impute iris Data set
ImputedData <- missForest(MissingData, maxiter=20)
MytestData <- ImputedData$ximp #testdata 
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)


####### MISSFOREST PACKAGE #######
library(missForest)

MyData <- iris 
#generate random "15%" missing values 
MissingData  <- prodNA(MyData[-5], noNA = 0.15)
#using missForest to impute iris Data set
ImputedData <- missForest(MissingData, maxiter=20)
MytestData <- ImputedData$ximp #testdata 
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)


####### MISSFOREST PACKAGE #######
library(missForest)

MyData <- iris 
#generate random "20%" missing values 
MissingData  <- prodNA(MyData[-5], noNA = 0.2)
#using missForest to impute iris Data set
ImputedData <- missForest(MissingData, maxiter=20)
MytestData <- ImputedData$ximp #testdata 
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)

####### MISSFOREST PACKAGE #######
library(missForest)

MyData <- iris 
#generate random "25%" missing values 
MissingData  <- prodNA(MyData[-5], noNA = 0.25)
#using missForest to impute iris Data set
ImputedData <- missForest(MissingData, maxiter=20)
MytestData <- ImputedData$ximp #testdata 
#using k-NN classifier
predict_species_class<- knn(train = MyData[-5], test = MytestData,  cl=MyData$Species , k = 3,prob=TRUE) 
#using confusion matrix to look  the performance of  knn class
confusionMatrix(MyData$Species,predict_species_class)
#Root mean square error between imputed Data and MytestData
RMSE(MyData[-5],MytestData)
