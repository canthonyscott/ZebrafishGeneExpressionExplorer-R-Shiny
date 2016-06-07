# ZebrafishGeneExpressionExplorer-R-Shiny

Zebrafish Gene Expression Explorer (ZGEE) is a web app to quicly analyze temporal gene expression in zebrafish over deveopmental time periods. Genes of interest are entered into a textbox separated by spaces. Gene names do not have to be complete, ZGEE will find partial matches. Shiny's reactive scripts automatically generate the heatmap overtime of the inputted genes.

Pipeline used to generate data for this app:
RNASeq fastq for zebrafish developmental timepoints was obtained from the NCBI SRA. These fastq files were aligned to the Zebrafish genome (GRCz10) using Tophat2. These aligned reads were processed using featureCounts to get raw read values by gene name. The featureCounts ouput was rlog normalized using DSEeq2 in R to generate a normalized list that is used to generate the heatmaps in this app.

data used in this app originally published by:
Levin, M., Anavy, L., Cole, A. G., Winter, E., Mostov, N., Khair, S., ... & Fernandez-Valverde, S. L. (2016). The mid-developmental transition and the evolution of animal body plans. Nature.
http://www.ncbi.nlm.nih.gov/pubmed/26886793

hosted online at:
https://anthony-scott.shinyapps.io/ZfishGeneExpressionExplorer/



