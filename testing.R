# read in all count data
list_of_genes <- c("smar", "cmlc", "vmhc")

newlist <- strsplit(list_of_genes, " ")

rlog_data_all <- read.table("data/rld_all.tabular")

df <- data.frame()

for (i in 1:length(newlist)){
      df <- rbind(df, rlog_data_all[grepl(newlist[i], rownames(rlog_data_all)),])
  }


