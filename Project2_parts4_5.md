---
title: "Project 2, parts 4 and 5: RNA-seq analysis"
output: html_document
date: "2025-05-08"
editor_options: 
  markdown: 
    wrap: 72
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

### Project 2 parts 4 and 5 overall: 75 points

Include any code that you used to solve the question as well as the
answers for all below questions. In parts 4 and 5 from project 2, you
will explore how gene expression differs between electric fish tissues.
You will learn how to analyze RNA-seq count data: identify
differentially expressed genes, distinguish samples, and make biological
interpretations. Additionally, you will visualize findings and
communicate them effectively. **Note: Please submit the Rmd and the knit
HTML file for this assignment**

### Dataset reminder:

In this project, you are be analyzing the count data and identifying
differentially expressed genes between skeletal muscle and electric
organ tissue. As a reminder, these datasets originated from two
different electric fish studies (PRJNA1005245 and PRJNA1005244). It may
help to consider how these papers analyzed the data: the methods for the
PRJNA1005244 dataset are
[published](https://doi.org/10.1093/molbev/msae021) and the methods for
the PRJNA1005245 dataset are written in the third chapter of a
[thesis](https://canvas.uoregon.edu/courses/266187/files/22059308?module_item_id=5380118).
These studies are both using the genus *Campylomormyrus*. **For this
assignment, you may not need to analyze all of the data to address the
hypothesis.**

### Resources:

There are several resources that you may use to complete this
assignment: 1) A primary resource: [DESeq2
workflow](https://master.bioconductor.org/packages/release/workflows/vignettes/rnaseqGene/inst/doc/rnaseqGene.html#pre-filtering-the-dataset).
2) [DESeq2's additional
guide](https://bioconductor.org/packages/devel/bioc/vignettes/DESeq2/inst/doc/DESeq2.html)
3) [Harvard Bioinformatics Core
training](https://hbctraining.github.io/DGE_workshop/lessons/04_DGE_DESeq2_analysis.html).

You are expected to use DESeq2 for this assignment. If you decide to use
an additional package, please list the package name, how you found it,
and why you chose to use it. We will do our best to help you navigate
other packages, but we cannot guarantee support for other packages.

## Project 2 part 4: Hypothesis testing and exploration

0.  In part 4, your goal is to investigate differences in gene
    expression between the electric organ and skeletal muscle. Write the
    null hypothesis for this goal below.

[Write the null hypothesis here]

1.  Load your data into DESeq2

- Your data is located on Talapas:
  /projects/bgmp/shared/Bi623/Project2/counts.tar
- **Think carefully about your design formula and explain your chosen
  formula below**
- Note: you can follow the Bear_analysis rmd from class as a template or
  can also reference other resources online, such as this guide from
  [Duke](https://people.duke.edu/~ccc14/duke-hts-2017/Statistics/08032017/DESeq2-Notebook-introduction.html)
  to load your data.

```{r}
#Include your commands, remember that you might not need to load all of the count files for this hypothesis
```

[Explain the logic behind your design formula]

2.  Filter the dataset to remove genes that are lowly expressed

- There are multiple ways to filter RNA-Seq datasets. You can either use
  cpm as a filter as we did in the Bear_analysis or use raw counts
  completed in the DESeq2 vignette from the above resources.
- Describe why you used your filtering strategy

```{r}
#Include your commands
```

[Specify which approach you chose and why]

3.  Normalize the dataset and run differential expression analysis

- You may choose to normalize and run differential expression separately
  as done in the Bear_analysis, or in 1 command as done in the DESeq
  workflow 5.1.

```{r}
#Include your commands
```

4.  Normalize the data to use for dimensionality reduction

- Use the rlog transformation method (follow along with the workflow,
  section 4.2)
- Describe why the rlog transformation is performed

```{r}
#Include your commands
```

[Write a description on the rlog transformation]

5.  Identify distances between samples using sample distance heatmaps

- Generate a Euclidean distance heatmap and dendrogram using your rlog
  transformed data (follow workflow section 4.3)
- Create a Poisson distance heatmap with dendrogram using DESeq data
  (follow workflow section 4.3)
- Describe what each of these heatmaps are measuring
- Look at the sample groupings for each heatmap+dendrogram. Do you
  notice any potential individual outliers? Do both plots agree?

Note: You may need to install the packages “pheatmap” and “RColorBrewer”
to follow along. If R tells you to restart your session listen to it.

```{r}
#Include your commands for generating the Euclidean distance heatmap and dendrogram with the rlog data
```

```{r}
#Include your commands for generating the Poisson distance heatmap with dendrogram using your original count matrix
```

[Describe the two heatmaps and what they are measuring (Any outliers? Do
the plots have the same interpretation?)]

6.  Examine similarity in sample global gene expression using PCA,
    Generalized PCA, and MDS plots.

- Generate PCA, Generalized PCA, and MDS plots (following workflow
  section 4.4-4.6)
- Modify the color and shape of points to reflect Tissue and Species of
  samples
- Briefly describe each approach and their findings.

```{r}
#Include commands on generating PCA, generalized PCA, and MDS plots
```

[Describe appropriateness of methods, their approaches, and their
findings]

7.  Use your dimensionality reduction plots, evaluate sample quality and
    complete quality adjustments.

- Based on your dimensionality reduction plots, do you have concerns
  about any samples? Explain.
- If so, remove them now, repeat steps of loading in data, filtering,
  normalization, and running the differential expression analysis.

[Describe your answer. If you identify a problem, then include the code
used to repeat the initial data loading, filtering, normalization, and
DE steps]

8.  Identify genes that are differentially expressed between SM and EO
    tissues in EVERY species comparison.

- Generate a results table using log fold shrinkage and proper contrasts
- Refer to this [reference for guidance on extracting
  contrasts](https://bioinformatics-core-shared-training.github.io/Bulk_RNAseq_Course_June24/Bulk_RNAseq_Course_Base/additional_scripts_and_materials/DESeq2_results_cheatsheet.pdf)
- When setting contrasts, identify the baseline variables used in the
  intercept to help determine proper contrasts
- Filter DEGs to contain only candidates with a \|log2FoldChange\|\>1
  and adjusted value \< .05
- Join DEG data sets for every species, remove any DEG not found in
  every species, and calculate the average log2FC and average adjusted
  p-value across all species
- Visualize your cleaned DEG dataset with a [volcano
  plot](https://dputhier.github.io/jgb71e-polytech-bioinfo-app/practical/rna-seq_R/rnaseq_diff_Snf2.html).
  - Use the average log2FC and adjusted p-values for plotting
  - Make sure your plot indicates the meaning of negative and positive
    logfold changes

```{r}
## YOUR CODE HERE
```

9.  Visualize individual candidates

- Using the DEG dataframe from above, report out the top five candidates
  with the lowest average adjusted p-value.
- Using the DEG dataframe from above, visualize the normalized counts
  for the gene with the highest log2FC in the SM. Also, make a plot for
  the top candidate for the EO.

```{r}
## YOUR CODE HERE
```

10. Using the DESeq LRT test, evaluate whether there is an association
    between gene expression and electric discharge signal duration

- Complete a LRT test using design formulas to determine whether there
  is an interaction between duration and electric discharge signal
  - You may need to reload in the data to DESeq2 and re-process it
    depending on how you specified your design formula.
  - Follow this [resource to guide your
    approach](https://hbctraining.github.io/Intro-to-DGE/lessons/08a_DGE_LRT_results.html)
  - Use only the purebred species for this analysis (NO hybrids, i.e.,
    do not include ccoxcts or ccoxcrh in the analysis)
- Use degPatterns to sort genes into groups that correspond to EOD
  duration
  - From the output, identify groups that 1) have higher gene expression
    in the EO than SM and 2) have gene expression patterns that increase
    or decrease with EOD duration
  - Create a plot from degPlotCluster to showcase ONLY these selected
    groups (ex: a group of genes that has a higher abundance in longer
    compared to shorter duration electric signals)

```{r}
## YOUR CODE HERE
```

11. Based on the signal duration clustering, select 1 of the relevant
    clusters and complete a gene ontology analysis.

- Isolate a gene list for the cluster of interest
- Convert Campy gene names to D. rerio gene names using the orthology
  table derived from our ICA2 Genespace assignment (Danio_Campylomormyrus_1to1_orthologs_table.csv)
  - Note: degPatterns transforms the Campy gene names, make sure to
    change them back so they match with the orthology table
- Complete a gene ontology analysis on the cluster of interest using the
  zebrafish gene names
  - Note: enrichGO and enrichKEGG are options, use this
    [reference](https://yulab-smu.top/biomedical-knowledge-mining-book/021-go.html#clusterprofiler-go-ora)

```{r}
#Include commands
```

## Project 2 Part 5: Creating high quality figures for your report

Go back through your work from part 1-4 and identify the key pieces of
information and plots for writing your project 2 report. Remake your
chosen plots below, creating publication quality figures. Your project 2
report should have 4-6 figures, these can have multiple panels if you
know how to achieve that in R. Each figure should add a different piece
of information (i.e., do NOT include 3 dimensionality plots that show
the same pattern).

Guidelines:

-  Figures should have a title and axes that are easy to read

- Have an accessible color scheme

- Have scientifically relevant information highlighted (ex: color scheme
  denotes different species)

- When applicable, color schemes should be consistent across plots

1.  Figure 1

```{r}
#Make figure 
#OR delete this box and link a figure that you made outside of R
```

2.  Figure 2

```{r}
#Make figure 
#OR delete this box and link a figure that you made outside of R
```

3.  Figure 3

```{r}
#Make figure 
#OR delete this box and link a figure that you made outside of R
```

4.  Figure 4

```{r}
#Make figure 
#OR delete this box and link a figure that you made outside of R
```

5.  Figure 5

```{r}
#OPTIONAL analysis
```

5.  Figure 6

```{r}
#OPTIONAL analysis
```
