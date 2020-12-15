#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  data("airquality")
  
  filteredData <- reactive({
    
    filteredData <- airquality[airquality$Month == input$month,]
    
    return(filteredData)
    
  })
  
  output$datatable1 <- renderDT({
    
    datatable(filteredData())
    
  })
  
  output$plot1 <- renderPlot({
    
    ggplot(data = filteredData(), aes_string(x = "Day", y = input$column)) + geom_point() + geom_line()
    
  })

})
