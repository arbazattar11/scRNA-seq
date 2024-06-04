# Load necessary libraries
library(Seurat)

# Load normalized counts
normalized_counts <- readRDS("normalized_counts.rds")

# Perform PCA
pca <- RunPCA(normalized_counts, verbose = FALSE)

# Save PCA results
saveRDS(pca, file = "pca_output.rds")
