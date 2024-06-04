# Assess quality of raw sequencing reads
fastqc -o output_dir input.fastq.gz

# Trim low-quality bases and adapter sequences
cutadapt -a ADAPTER_SEQ -o output.fastq.gz input.fastq.gz
# Align reads to reference genome/transcriptome
hisat2 -x genome_index -U input.fastq.gz -S output.sam

# Convert SAM to BAM and sort
samtools view -bS output.sam | samtools sort -o output.sorted.bam -

# Index sorted BAM file
samtools index output.sorted.bam

# Quantify gene expression
featureCounts -a annotation.gtf -o counts.txt output.sorted.bam
# Import count data into R or Python environment (e.g., Seurat or Scanpy)
# Normalize gene expression data
Rscript normalize.R counts.txt normalized_counts.rds
# Perform PCA or t-SNE
Rscript pca.R normalized_counts.rds pca_output.rds

# Cluster cells
Rscript cluster.R pca_output.rds clustering_results.rds
# Perform differential expression analysis
Rscript de_analysis.R normalized_counts.rds clustering_results.rds de_results.rds
# Annotate cell clusters
Rscript annotate_clusters.R clustering_results.rds annotation.txt
# Visualize results
Rscript visualize.R normalized_counts.rds clustering_results.rds de_results.rds annotation.txt
