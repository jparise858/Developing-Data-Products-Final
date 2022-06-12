#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# The server takes concentration and volume input as explained in the ui.R file
# documentation, and automatically calculates amount of master stock (uL)
# needed to achieve the desired target volume and concentration.

shinyServer(function(input, output) {

  b1 = reactive(input$box1)
  b2 = reactive(input$box2)
  b3 = reactive(input$box3)


output$b4 <- reactive({as.numeric(input$box3) * as.numeric(input$box2) / as.numeric(input$box1)

})
})
