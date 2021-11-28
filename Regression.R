# Testing performance of regression and classification models with prognostic markers in lung carcinomas Nov 28, 2021

#########RANDOM FOREST#############
library(randomForest)
library(caret)
setwd("/Users/yalegenomecenter/Desktop")
data <- read.csv("17-Data.csv")
set.seed(222)
data$Pat_Died <- as.factor(data$Pat_Died)
table(data$Pat_Died)
ind <- sample(2, nrow(data), replace = TRUE, prob = c(0.7, 0.3))
train <- data[ind==1,]
test <- data[ind==2,]
rf <- randomForest(Pat_Died~., data=train, proximity=TRUE) print(rf)
p1 <- predict(rf, train)
confusionMatrix(p1, train$Pat_Died)

p2 <- predict(rf, test)
confusionMatrix(p2, test$Pat_Died)

#########SVM#############
library(kernlab)
library(e1071)

svmfit <- svm(data$Pat_Died~., data = data[,2:3], kernel = "radial", cost = 10, gamma = 1)
dat <- data.frame(x=data[,2:3], y=as.factor(data$Pat_Died))
ggplot(data = dat, aes(x = x.X890, y = x.X6790, color = y, shape = y)) + 
  geom_point(size = 2) +
  scale_color_manual(values=c("#000000","#FF0000")) +
  theme(legend.position = "none") + xlab("ID:890") + ylab("ID:6790")
ypred <- predict(svmfit, data[,2:3])  
(misclass <- table(predict = ypred, truth = data$Pat_Died))

       truth
predict  0  1
      0 17  3
      1 15 47
      
#########LOGISTIC REGRESSION#############

library(aod)
data$Pat_Died <- factor(data$Pat_Died)
mylogit <- glm(Pat_Died ~ X6790 + X9212+ X2237+ X960+ X896+ X83988+ X23499+ X10266+ X7157, data = data, family = "binomial")

wald.test(b = coef(mylogit), Sigma = vcov(mylogit), Terms = 4:6)

newdata1 = data[29:40,]
newdata1$rankP <- predict(mylogit, newdata = newdata1, type = "response")

#########LASSO REGRESSION#############

library(glmnet)

y <- data$Pat_Died
x <- data.matrix(data[,2:11])

#perform k-fold cross-validation to find optimal lambda value
cv_model <- cv.glmnet(x, y, alpha = 1, family = "binomial")

#find optimal lambda value that minimizes test MSE
best_lambda <- cv_model$lambda.min
best_lambda

plot(cv_model) 

#find coefficients of best model
best_model <- glmnet(x, y, alpha = 1, lambda = best_lambda,family = "binomial")
coef(best_model)

new = data[29:40,]
new = data.matrix(new[,2:11])

y_predicted <- predict(best_model, s = best_lambda, newx = new)
#find SST and SSE
y = as.numeric(new[,12])
sst <- sum((y-mean(y))^2)
sse <- sum((y_predicted-y)^2)

#find R-Squared
rsq <- 1 - sse/sst
rsq

###################################################

