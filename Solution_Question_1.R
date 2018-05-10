
library("Rcmdr", lib.loc="/Library/Frameworks/R.framework/Versions/3.3/Resources/library")

##Rcmdr code for linear regression model building

>  RegModel.2 <- lm(xygen~age+chestdep+height+weight, data=Dataset)

>  summary(RegModel.2)

Call:
  lm(formula = xygen ~ age + chestdep + height + weight, data = Dataset)

  ## R results 


     ##Residuals:
Min        1Q    Median        3Q       Max 
-0.148902 -0.036051 -0.002667  0.040316  0.130263 

Coefficients:
  Estimate Std. Error t value   Pr(>|t|)    
(Intercept) -3.324323   0.583557  -5.697 0.00000993 ***
  age          0.006389   0.020369   0.314     0.7567    
chestdep     0.063589   0.029545   2.152     0.0426 *  
  height       0.030543   0.005527   5.526 0.00001488 ***
  weight      -0.004454   0.011488  -0.388     0.7020    
---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.06944 on 22 degrees of freedom
Multiple R-squared:  0.7725,	Adjusted R-squared:  0.7312 
F-statistic: 18.68 on 4 and 22 DF,  p-value: 0.0000008006

### backward selection , removing age from the model as it has the highes p-value.


Rcmdr>  RegModel.3 <- lm(xygen~chestdep+height+weight, data=Dataset)

Rcmdr>  summary(RegModel.3)

Call:
  lm(formula = xygen ~ chestdep + height + weight, data = Dataset)

Residuals:
  Min        1Q    Median        3Q       Max 
-0.151034 -0.038283 -0.004536  0.041407  0.128765 

Coefficients:
  Estimate Std. Error t value   Pr(>|t|)    
(Intercept) -3.315438   0.571330  -5.803 0.00000652 ***
  chestdep     0.062781   0.028850   2.176     0.0401 *  
  height       0.030886   0.005310   5.816 0.00000631 ***
  weight      -0.003992   0.011168  -0.357     0.7240    
---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.06807 on 23 degrees of freedom
Multiple R-squared:  0.7715,	Adjusted R-squared:  0.7417 
F-statistic: 25.89 on 3 and 23 DF,  p-value: 0.0000001485

### final model after back ward selection 

>  RegModel.4 <- lm(xygen~chestdep+height, data=Dataset)

>  summary(RegModel.4)

Call:
  lm(formula = xygen ~ chestdep + height, data = Dataset)

Residuals:
  Min       1Q   Median       3Q      Max 
-0.14667 -0.03851  0.00479  0.04249  0.12803 

Coefficients:
  Estimate Std. Error t value    Pr(>|t|)    
(Intercept) -3.254625   0.535408  -6.079 0.000002808 ***
  chestdep     0.061294   0.028024   2.187      0.0387 *  
  height       0.029699   0.004068   7.301 0.000000153 ***
  ---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.06682 on 24 degrees of freedom
Multiple R-squared:  0.7703,	Adjusted R-squared:  0.7511 
F-statistic: 40.23 on 2 and 24 DF,  p-value: 0.00000002162
##Given the final model and a fixed height, as the chest depth increases by 1 cm. 
##what change would you expect to see in maximum oxygen uptake?

library(MASS, pos=17)
>  Confint(RegModel.4, level=0.95)
Estimate        2.5 %      97.5 %
  (Intercept) -3.25462537 -4.359653788 -2.14959694
chestdep     0.06129374  0.003454327  0.11913315
height       0.02969883  0.021303877  0.03809377
> 

