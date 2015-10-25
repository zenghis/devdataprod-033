library(shiny)
shinyServer(
  function(input, output) {
    output$add <- renderPrint({
      as.numeric(input$number1)+
      as.numeric(input$number2)
  })
    output$subtract <- renderPrint({
      as.numeric(input$number1)-
      as.numeric(input$number2)
  })
    output$multiply <- renderPrint({
      as.numeric(input$number1)*
      as.numeric(input$number2)
  })
    output$divide <- renderPrint({
      as.numeric(input$number1)/
      as.numeric(input$number2)
  })
})