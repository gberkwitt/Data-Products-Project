# Goal: Joint distributions, marginal distributions, useful tables.

# First let me invent some fake data
set.seed(102)                           # This yields a good illustration.
x <- sample(1:3, 15, replace=TRUE)
education <- factor(x, labels=c("K-8", "High School", "College"))
x <- sample(1:2, 15, replace=TRUE)
gender <- factor(x, labels=c("Male", "Female"))
age <- runif(15, min=20,max=60)

D <- data.frame(age, gender, education)
rm(x,age,gender,education)

# Study age by education category
by(D$age, D$gender, mean)
by(D$age, D$gender, sd)
by(D$age, D$gender, summary)