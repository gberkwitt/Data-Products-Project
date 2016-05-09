Developing Data Products: Course Project Presentation
========================================================
author: Glenn Berkwitt
date: 5/7/2016
autosize: true
transition: rotate

Assignment: Part 1
========================================================
<font size="5">
The requirement for Part 1 of this class project was to:

- Write a Shiny App,
- Deploy it on Shiny's server: *shinyapps.io*,
- Share the application link by pasting it into the provided text box,
- Share your server.R and ui.R code on github,
- Present the work via Slidify or R Studio's Presenter (used here).

Required in the app itself were:
- Some form of input (widget: textbox, radio button, checkbox, ...),  
- Some operation on the ui input in sever.R,  
- Some reactive output displayed as a result of server calculations,  
- Enough documentation so that a novice user could use your application with the documentation at the Shiny website itself.

</font>

My App
===
<font size="5">
The app I created demonstrates some basic statistical relationships, specifically how the standard error of the mean, as calculated from the sample statistics for a single sample, corresponds to the width of the expected distribution of means. 

There are two sliders one can adjust:  

- The standard deviation of a population,  
- The number of observations within a single sample.  


Moving these sliders enables one to see the following visualizations:  

- A plot of the population distribution as a function of the population standard deviation selected,  
- A plot showing the frequency of population distribution for a single sample according to  
        - the standard deviation chosen as well as  
        - the effect of the observation quantity on the standard error of the mean,  
- A plot showing the distribution of means from numerous samples as a function of the variables chosen on the sliders.

</font>

Embedding Code
========================================================
<font size="5">
One cool thing about this presentation tool is, like an R Markdown document, that one can embed executable code. Below is an example (not drawn from the app code):


```r
x <- sample(1:3, 15, replace=TRUE)
education <- factor(x, labels=c("K-8", "High School", "College"))
x <- sample(1:2, 15, replace=TRUE)
gender <- factor(x, labels=c("Male", "Female"))
age <- runif(15, min=20,max=60)
D <- data.frame(age, gender, education)
rm(x,age,gender,education)
by(D$age, D$gender, mean)
```

```
D$gender: Male
[1] 45.86963
-------------------------------------------------------- 
D$gender: Female
[1] 47.59271
```

```r
by(D$age, D$gender, summary)
```

```
D$gender: Male
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  33.30   39.84   46.81   45.87   47.87   59.31 
-------------------------------------------------------- 
D$gender: Female
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  32.37   41.13   47.43   47.59   56.73   59.46 
```

</font>

Conclusion
========================================================
These tools, *Shiny* and R Studio's *Presenter* make the creation and distribution of an application fast and easy once you get the hang of it (you might be a whole lot quicker than I!!)

But please take a look at my app, play around with it and see if it gives you some insights into these basic statistical concepts.  It is viewable (and playable) at  https://gberkwitt.shinyapps.io/Course_Project/
