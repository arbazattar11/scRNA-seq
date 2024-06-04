# Load necessary libraries
library(Seurat)

# Load raw count data
raw_counts <- read.table("counts.txt", header = TRUE, row.names = 1)

# Normalize data
normalized_counts <- NormalizeData(raw_counts, normalization.method = "LogNormalize", scale.factor = 10000)

# Save normalized counts
saveRDS(normalized_counts, file = "normalized_counts.rds")
