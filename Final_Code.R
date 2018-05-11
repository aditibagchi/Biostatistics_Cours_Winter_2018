
  ---
  library("Rcmdr", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")
title: "Final_Part_Exam"
author: "Aditi Bagchi"
date: "5/11/2018"
output: html_document
## First create a Matrix using the data

BloodGroup <- matrix(c(72,230,54,192,16,63,8,15), ncol = 2, byrow = TRUE)
colnames(BloodGroup) <- c("carriers", "Noncarriers")
rownames(BloodGroup) <- c("o", "A", "B", "AB")
BloodGroup
## Matrix
carriers Noncarriers
o        72         230
A        54         192
B        16          63
AB        8          15

## statistical test 
chisq.test(BloodGroup)

### RESULTS
Pearson's Chi-squared test

data:  BloodGroup
X-squared = 2.4052, df = 3, p-value = 0.4927

## Code for Question22 chapter - 8

Rcmdr>  Anova(AnovaModel.17, type="II")
Anova Table (Type II tests)

Response: SCORES
Sum Sq Df F value Pr(>F)  
SIDE        2.578  1  0.6384 0.4282  
SIZE       29.981  2  3.7121 0.0317 *
SIDE:SIZE  10.540  2  1.3050 0.2806  
Residuals 193.840 48                 
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1