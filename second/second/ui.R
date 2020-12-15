
library(shiny)
library(DT)
library(tidyverse)

# app <- shinyApp(ui = ui, server = server)
# runApp(app, host = "0.0.0.0", port = 80)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  DTOutput('datatable1'),
  plotOutput("plot1")
))
