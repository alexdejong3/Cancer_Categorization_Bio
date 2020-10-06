library(ggfortify)

setwd("~/CompBio/Report_1/")
cancerData <- read.csv(file = 'data.csv')
keepCols <- c(32:520)
geneData <- cancerData[keepCols]
gene.pca <- prcomp(geneData)

autoplot(gene.pca, data = cancerData, colour = 'X3.gene_classifier_subtype')

# Categories for data analysis
#integrative_cluster

#gata3
#chemotherapy
#er_status

#cohort
#kmt2c
#her2_status
#pam50_._claudin.low_subtype
#X3.gene_classifier_subtype