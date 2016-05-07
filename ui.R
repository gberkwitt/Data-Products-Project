# Create ui.R file
# h3(This Shiny app,developed for the "Coursera Developing Data Products" course, demonstrates the relationship between the standard deviation of a population, the standard deviation and standard error of the mean for a sample drawn from that population, and the expected distribution of means that would be obtained via numerous samples of the same size from that population. It demonstrates how the standard error of the mean, as calculated from the sample statistics for a single sample, corresponds to the width of the expected distribution of means.
fig.width <- 600
fig.height <- 250
shinyUI(pageWithSidebar(
        headerPanel("Sampling & Standard Error"),
        
        sidebarPanel(
                sliderInput("pop.sd", 
                            strong("Population standard deviation"), 
                            min=0, max=4, value=2, step=.2, ticks=FALSE),
                sliderInput("n.sample",
                            strong("Number of observations in a sample"),
                            min=1, max=100, value=20)
),
        
        mainPanel(
                
                div(plotOutput("population", width=fig.width, height=fig.height)),
                div(plotOutput("sample", width=fig.width, height=fig.height)),
                div(plotOutput("standard.error", width=fig.width, height=fig.height))
        )
))

