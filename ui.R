library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Basic Calculator"),
    sidebarPanel(
      numericInput("number1", label = h4("Number 1"), value = 0),
      numericInput("number2", label = h4("Number 2"), value = 0),
      width = 3),
    mainPanel(
      h4("Addition"),
      verbatimTextOutput("add"),
      h4("Subtraction"),
      verbatimTextOutput("subtract"),
      h4("Multiplication"),
      verbatimTextOutput("multiply"),
      h4("Division"),
      verbatimTextOutput("divide"),
      width = 3)
  )
)