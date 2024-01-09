data <- read.csv("data.csv", header=TRUE, row.names=1)
library(factoextra)
res.pca <- prcomp(data, scale = TRUE)
fviz_eig(res.pca)
clust <- c("Tolerant", "Sensitive", "Tolerant", "Tolerant", "Tolerant", "Tolerant",
           "Sensitive", "Moderate", "Moderate", "Moderate", "Sensitive", "Moderate",
           "Sensitive", "Tolerant", "Sensitive", "Moderate", "Tolerant", "Moderate",
           "Moderate", "Moderate", "Tolerant", "Tolerant", "Tolerant", "Moderate",
           "Moderate", "Tolerant", "Sensitive", "Tolerant", "Moderate", "Sensitive",
           "Moderate", "Tolerant", "Sensitive", "Sensitive", "Tolerant", "Tolerant",
           "Tolerant", "Moderate", "Tolerant", "Tolerant")

fviz_pca_biplot(res.pca, repel = TRUE,
                col.var = "black",  # Variables color
                col = clust,        # Individuals color
                legend.title = "Groups",
                addEllipses = TRUE,
                palette = c("Tolerant" = "blue", "Moderate" = "green", "Sensitive" = "red")
)

savePlot(file = "PCA_PLOT", type = "png")
