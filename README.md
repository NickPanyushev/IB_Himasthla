# IB_Himasthla
This project is about TE search in Himasthla transcriptome

## Introduction
Repeated DNA makes up a large fraction of a eukaryotic genome, and some repetitive elements are able to move within the genome (transposons and retrotransposons). DNA transposons move from one genomic location to another by a cut-and-paste mechanism. They are powerful forces of genetic change and have played a significant role in the evolution of many genomes.
Transposons can cause genome variability in trematodes. Therefore, the study of transcription of transposons - the initial stage in the study of these processes

## Objective:
Identification TE in Himasthla elongate genome using different tools and comparative analysis of their results

## Goals:

1. Filtering reads using BBTools, Trimmomatic;

2. Transcriptome assembly using rnaSPAdes or Trinity;

3. Identification and classification of transposable elements using different tools (RepeatModeller, RepeatMasker, Repeatexplorer2)

## Detailed information:

* To get more information about RepeatModeller results go to "RepeatModeller_output" folder
* To get more information about RepeaMasker results go to "RepeatModeller_output"
* To get more information about Repeat Explorer2 results go to "repeat_explorer_output"
* To get more information about quality assessment of transcriptome assembly go to "rnaQ_report"
* To get file with transcripts abundance in TPM go to "quantification"

## Methods

For de novo transposons identification we used [RepeatModeller tool](http://www.repeatmasker.org/RepeatModeler/) which includes RepeatScout, RECON, and Tandem Repeat Finder.

To classify transposones we used [RepeatMasker](http://www.repeatmasker.org/) with databases from [GIRI](https://www.girinst.org/repbase/)

To de novo identify and classify modile elements in reads we used Repeat Explorer from [Galaxy server](http://repeatexplorer.org/)

In general, using RepeatModeller+Repeatmasker combination we get following results:

!(https://github.com/NickPanyushev/IB_Himasthla/blob/master/Plots/Counts.png)
