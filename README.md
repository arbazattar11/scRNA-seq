# Single-cell RNA-seq Pipeline

This repository contains a pipeline for the analysis of single-cell RNA sequencing (scRNA-seq) data using Linux command-line tools and R scripts.

## Pipeline Overview

The pipeline consists of the following main steps:

1. **Preprocessing**: Quality control, read trimming, alignment to reference genome/transcriptome, and gene expression quantification.
2. **Single-cell Analysis**: Preprocessing, normalization, dimensionality reduction, clustering, differential expression analysis, and cell type annotation.
3. **Visualization and Interpretation**: Visualization of clustering results, differential expression analysis, and cell type annotation.

## Usage

### Preprocessing

- Run FastQC to assess the quality of raw sequencing reads.
- Use Cutadapt to trim low-quality bases and adapter sequences.
- Align reads to a reference genome/transcriptome using HISAT2.
- Quantify gene expression using featureCounts.

### Single-cell Analysis

- Import the count data into R or Python environment.
- Normalize gene expression data using provided R script (`normalize.R`).
- Perform dimensionality reduction (e.g., PCA or t-SNE) and clustering using provided R scripts (`pca.R` and `cluster.R`).
- Perform differential expression analysis using provided R script (`de_analysis.R`).
- Annotate cell clusters using provided R script (`annotate_clusters.R`).

### Visualization and Interpretation

- Visualize clustering results, differential expression analysis, and cell type annotation using provided R script (`visualize.R`).

## Requirements

- Linux environment
- Installed command-line tools: FastQC, Cutadapt, HISAT2, samtools, featureCounts
- R environment with required packages: Seurat, etc.

## File Structure

```
- README.md
- scRNA-seq.sh
- single_cell_analysis/
  - normalize.R
  - pca.R
  - cluster.R
  - de_analysis.R
  - annotate_clusters.R
  - visualize.R
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
