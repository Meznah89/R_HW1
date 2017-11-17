######## HMISC PAKAGE ######
library(Hmisc)

MyData <- iris 
#generate random "2%" missing values
MissingData  <- prodNA(MyData[-5], noNA = 0.02)
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

######## HMISC PAKAGE ######
library(Hmisc)

MyData <- iris 
#generate random "5%" missing values
MissingData  <- prodNA(MyData[-5], noNA = 0.05)
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


######## HMISC PAKAGE ######
library(Hmisc)

MyData <- iris 
#generate random "10%" missing values
MissingData  <- prodNA(MyData[-5], noNA = 0.1)
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


######## HMISC PAKAGE ######
library(Hmisc)

MyData <- iris 
#generate random "15%" missing values
MissingData  <- prodNA(MyData[-5], noNA = 0.15)
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

######## HMISC PAKAGE ######
library(Hmisc)

MyData <- iris 
#generate random "20%" missing values
MissingData  <- prodNA(MyData[-5], noNA = 0.20)
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


######## HMISC PAKAGE ######
library(Hmisc)

MyData <- iris 
#generate random "25%" missing values
MissingData  <- prodNA(MyData[-5], noNA = 0.25)
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
