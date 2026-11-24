m <- glm(rbinom(100,1,plogis((1:100)/10-2))~1:100,family=binomial)
summary(m)
