library(shiny)
shinyUI(fluidPage(
    titlePanel("Basic Calculator"),
    sidebarLayout(
      sidebarPanel(
        numericInput("number1", label = h4("Number 1"), value = 0),
        numericInput("number2", label = h4("Number 2"), value = 0)),
      mainPanel(
        tabsetPanel(type = "tabs", 
          tabPanel("Documentation",
            helpText('The Shiny app is a basic calculator that performs addition,
                      subtraction, multiplication, and division.
                      Inserts any two numbers to get the answers,
                      which shown in the Results tab.
                      Sometimes, the display of the results could be slightly delayed,
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