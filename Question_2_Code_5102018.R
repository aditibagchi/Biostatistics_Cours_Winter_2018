


## creatung a matrix in R for question2 
GaitData <- matrix(c(38, 23, 11, 57), nrow = 2, dimnames = list("Pre-Treatment-Gait" = c("Normal", "Abnormal"), "Post-Treatment-Gait" = c("Normal", "Abnormal")))
GaitData

##OutPut

               Post-Treatment-Gait
Pre-Treatment-Gait Normal Abnormal
Normal       38       11
Abnormal     23       57

##For analysis paired data  ( Both variables are qualitative, but smaples are paired and not independent)
mcnemar.test(GaitData)
