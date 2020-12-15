#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)
library(ggplot2)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  selectInput(inputId = "month", label = "Select a month:", choices = unique(airquality$Month)),
  selectInput(inputId = "column", label = "Select a column to plot", choices = c("Wind", "Temp")),
  DTOutput(outputId = "datatable1"),
  plotOutput(outputId = "plot1")

))
