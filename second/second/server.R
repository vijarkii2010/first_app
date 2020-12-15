library(shiny)
library(DT)
library(tidyverse)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  data("mtcars")
  mtcars$cyl <- as.factor(mtcars$cyl)
  
  output$datatable1 <- renderDT(datatable(mtcars))
  
  output$plot1 <- renderPlot({
    
    ggplot(data = mtcars, aes(x = wt, y = mpg, color = cyl)) + geom_point()
    
  })

})
