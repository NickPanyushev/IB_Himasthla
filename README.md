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

## Results

In general, using RepeatModeller+Repeatmasker combination we got following results:

![RepeatModeller+RepeatMasker results](https://github.com/NickPanyushev/IB_Himasthla/blob/master/Plots/Counts.png)

According to RepeatMasker results the most abundance transposone families are BovB, CR1 and Gypsy. All this families belong to retrotransposones.

Some groups contain overrepresented sequences. For example, the PAO family from the LTR class demonstrates one overrepresented sequence that can play an important role in the Himasthla elongata cells:

![overrepresented sequences](https://github.com/NickPanyushev/IB_Himasthla/blob/master/Plots/Rplot02.jpeg)


RepeatExplorer reported about 10 percents of repetitive elements in the H. elongata transcriptome. Only 0,01% fell on Bel-Pao elements, 1.03 - Gypsy and 0.09 - Satellites. 

Thus, RepetExplorer turned out to be a less effective tool in the annotation of mobile elements




