# get list of genes
library("plotly")
list_of_genes <- "vmhc cmlc smar"

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

