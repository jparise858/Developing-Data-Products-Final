#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
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

shinyUI(fluidPage(
  titlePanel("Concentration Calculations (M1V1 = M2V2)"),
  sidebarLayout(
    sidebarPanel(
    h1("Known Input"),
    textInput("box1", "Master Stock Concentration (mM)", value = "0"),
    textInput("box2", "Final volume (uL)", value = "0"),
    textInput("box3", "Final concentration (mM)", value = "0"),
  ),
  mainPanel(
    h3("Volume of Master Stock to be Used (uL):"),

    textOutput("b4"),
  )
  )
))

