data = read.csv("C:/Users/Ashu/Documents/GitHub/Data-Visualing-Tweaks/New-Mexico/dataset_simpleRegression.csv")
plot(data,col='red')
#Predicting Fall Enrollment Number based on unemployment rate
qplot(ROLL,UNEM,data)
linearModel = lm(ROLL~UNEM, data)
anova(linearModel);

plot(linearModel,1);

#Predicting Fall Enrollment Number based on Graduation
qplot(ROLL,HGRAD,data)
linearModel = lm(ROLL~HGRAD, data)
anova(linearModel);

plot(linearModel,1);

#Predicting Fall Enrollment Number based on Income
qplot(ROLL,INC,data)
linearModel = lm(ROLL~INC, data)
anova(linearModel,1);

plot(linearModel);

#MULTIPLE PREDICTORS
qplot(ROLL,HGRAD+UNEM,data)
linearModel = lm(ROLL~HGRAD+UNEM, data)
anova(linearModel);

plot(linearModel,1);
