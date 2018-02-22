## Load data file
candy <- read.csv("data/werthers_data.csv")
summary(candy)


## Linear models

    #Person only
lm1 = lm(Time~Subject, data=candy)
summary(lm1)
#plot(lm1)

    #Candy type only
lm2 = lm(Time~Type, data=candy)
summary(lm2)
#plot(lm2)

    #Candy and person
lm3 = lm(Time~Subject*Type, data=candy)
summary(lm3)
#plot(lm3)

anova(lm2,lm3)
