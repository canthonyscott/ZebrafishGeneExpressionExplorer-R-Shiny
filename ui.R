
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  theme = "superhero.min.css",

  # Application title
  titlePanel("Zebrafish Gene Expression Explorer"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("gene_input", label = h3("Enter gene list separated by spaces"), 
                value ="cmlc nkx2 vmhc")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotlyOutput("heatMap")
    )
  )
))
