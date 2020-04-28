###BS Forge
library(Biostrings)
file <- file.path("extdata", "ce2chrM.2bit")
###Prepare the DCFseed file
###
library(BSgenome)
seed_files <- file.path("extdata", "GentlemanLab")
###Forge
library(BSgenome)
forgeBSgenomeDataPkg("path/to/my/seed")
###Quit R
###R terminal
R CMD build <pkgdir>
R CMD INSTALL <tarball>
###CRISPRAseek
setwd("C:/Users/Sounak Saha/Downloads/iGEM/seq_srcdir")
library(BSgenome)
library(BSgenome.Sarscov.UCSC.wuhCor)
library(GenomicFeatures)
library(CRISPRseek)
TxDb.SARSCOV=loadDb("C:/Users/Sounak Saha/Downloads/iGEM/seq_srcdir/SARSCOV2.sqlite")
outputDir=getwd()
inputFilePath <- file.path("C:","Users", "Sounak Saha", "Downloads", "iGEM", "seq_srcdir", "structured_sars.fa")
results <- offTargetAnalysis(inputFilePath, findgRNAsWithREcutOnly = TRUE, findPairedgRNAOnly = TRUE, BSgenomeName = Sarscov, min.gap = 0, max.gap = 20, txdb = TxDb.SARSCOV, outputDir = outputDir,overwrite = TRUE)
