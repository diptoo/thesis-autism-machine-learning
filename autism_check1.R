setwd("~/autism")
train <- read.csv("~/autism/train.csv")
test <- read.csv("~/autism/test.csv")
library(rpart)
library(rattle)
library(rpart.plot)
library(RColorBrewer)

mytree3 <- rpart(Class.ASD ~ A1_Score + A2_Score + A3_Score + A4_Score + A5_Score + A6_Score + A7_Score+ A8_Score + A9_Score + A10_Score+age, data=train, method="class")
fancyRpartPlot(mytree3)

mytree4 <- rpart(Class.ASD ~ A1_Score + A2_Score + A3_Score + A4_Score + A5_Score + A6_Score + A7_Score+ A8_Score + A9_Score + A10_Score+age+gender, data=train, method="class")
fancyRpartPlot(mytree4)
