
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library("plotly")
library(RColorBrewer)

shinyServer(function(input, output) {
  
    output$heatMap <- renderPlotly({
      
      #list_of_genes <- "smar vmhc"
      list_of_genes <- input$gene_input
      
      # split the input string into a list
      newlist <- as.list(strsplit(list_of_genes, "[ ]")[[1]])
      
      # read in all rlog transformed data
      rlog_data_all <- read.table("data/rld_all.tabular")
      # create empty dataframe
      df <- data.frame()
      
      # filter the dataframe based off of matches of the user input list
      for (i in 1:length(newlist)){
        df <- rbind(df, rlog_data_all[grepl(newlist[i], rownames(rlog_data_all)),])
      }
      
      # convert to matrix
      df <- as.matrix(df)
      
      xlabs <- c("40min", "4hpf", "9phf", "11hpf", "14hpf","24hpf","28hpf","48hpf")
      
      ax <- list(
        title = "Developmental Stage")
      yx <- list(
        title = "Gene")
      m <- list(
        l = 80)
      
      plot_ly(z = df, type = "heatmap", x = xlabs, y = rownames(df)) %>%
        layout(xaxis = ax, yaxis = yx, margin = m)
      
    })
    


})
