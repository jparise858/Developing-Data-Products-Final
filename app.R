#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(miniUI)

# This application is a simple calculation engine for concentration calculations.
# It uses the volume and concentration relation M1V1=M2V2.
# Final output determines the amount of master stock volume needed in uL.
# Needed values are master stock concentration (mM), target concentration (mM)
# and final volume (uL).

ConcGadget <- function() {

ui <- fluidPage(

    # Application title
    titlePanel("Concentration Calculations (M1V1 = M2V2)"),

    # Input known variables of concentration and volume.
    sidebarLayout(
      sidebarPanel(
        h1("Known Input"),
        textInput("box1", "Master Stock Concentration (mM)", value = "0"),
        textInput("box2", "Final volume (uL)", value = "0"),
        textInput("box3", "Final concentration (mM)", value = "0"),
      ),

        # Output of volume needed to achieve target concentration.
      mainPanel(
        h3("Volume of Master Stock to be Used (uL):"),

        textOutput("b4")
        )
    )
)

# Server calculates target volume needed from the provided input.

server <- function(input, output) {

  b1 = reactive(input$box1)
  b2 = reactive(input$box2)
  b3 = reactive(input$box3)


output$b4 <- reactive({as.numeric(input$box3) * as.numeric(input$box2) / as.numeric(input$box1)
    })
}
runGadget(ui,server)
}
