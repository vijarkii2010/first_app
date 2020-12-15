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
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "month", label = "Select a month:", choices = unique(airquality$Month)),
      selectInput(inputId = "column", label = "Select a column", choices = c("Wind", "Temp"))
    ),
    mainPanel(
      fluidRow(
        column(width = 6,
               DTOutput(outputId = "datatable1")
        ),
        column(width = 6,
               plotOutput("plot1")
        )
      )
    )
  )

))
