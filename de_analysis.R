# Load necessary libraries
library(Seurat)

# Load normalized counts and clustering results
normalized_counts <- readRDS("normalized_counts.rds")
seurat_obj <- readRDS("clustering_results.rds")

# Identify differentially expressed genes
seurat_obj <- FindAllMarkers(seurat_obj, only.pos = TRUE, min.pct = 0.25, logfc.threshold = 0.25)

# Save differential expression results
saveRDS(seurat_obj, file = "de_results.rds")
