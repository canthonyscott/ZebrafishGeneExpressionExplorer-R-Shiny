
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(plotly)

shinyServer(function(input, output) {

  output$heatMap <- renderPlot({
    
    # read in all count data
    rlog_data_all <- read.table("data/rld_all.tabular")

  })

})
