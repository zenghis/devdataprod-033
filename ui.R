library(shiny)
shinyUI(fluidPage(
    headerPanel("Basic Calculator", windowTitle = "Shiny App"),
    sidebarLayout(
      sidebarPanel(
        numericInput("number1", label = h4("Number 1"), value = 0),
        numericInput("number2", label = h4("Number 2"), value = 0)),
      mainPanel(
        tabsetPanel(type = "tabs", 
          tabPanel("Documentation",
            helpText('The Shiny app is a basic calculator that performs addition,
                      subtraction, multiplication, and division between two numbers.
                      After inserted the numbers,
                      the answers will shown under the Results tab.
                      Sometimes, the display of the results may be slightly delayed,
                      possibly due to heavy loads on the server.')), 
          tabPanel("Results",
            h4("Addition"),
            verbatimTextOutput("add"),
            h4("Subtraction"),
            verbatimTextOutput("subtract"),
            h4("Multiplication"),
            verbatimTextOutput("multiply"),
            h4("Division"),
            verbatimTextOutput("divide"))
        )
      )
    )
))