# read in all count data
library("gdata")

list_of_genes <- c("smar", "cmlc1", "nkx")

newlist <- strsplit(list_of_genes, " ")

rlog_data_all <- read.table("data/rld_all.tabular")

for (i in 1:length(newlist)){
  df <- rlog_data_all[grepl(newlist[i])]
  }


