# IB_Himasthla
This project is about search of mobile elements in trematode Himasthla elongata transcriptome

## Introduction
Repetitive DNA makes up a large fraction of a eukaryotic genomes, and some repetitive elements, transposons, are able to move within the genome. Transposons are powerful forces of genetic change and have played a significant role in the evolution of many genomes.
Transposons seem to cause genetic polymorphism in trematodes. Therefore, this project is one of the steps for investigation of transposon functions.

## Objective:
Identification transposable elements in Himasthla elongata transcriptome using different tools and comparative analysis of their results

## Goals:

1. Filtering raw reads using BBTools, Trimmomatic;

2. Transcriptome assembly using rnaSPAdes;

3. Identification and classification of transposable elements using different tools (RepeatModeller, RepeatMasker, Repeatexplorer2)

## Detailed information:

* To get more information about RepeatModeller results go to "RepeatModeller_output" folder
* To get more information about RepeaMasker results go to "RepeatModeller_output"
* To get more information about Repeat Explorer2 results go to "repeat_explorer_output"
* To get more information about quality assessment of transcriptome assembly go to "rnaQ_report"
* To get file with transcripts abundance in TPM go to "quantification"

## Methods

For de novo transposons identification we used [RepeatModeller tool](http://www.repeatmasker.org/RepeatModeler/) which includes RepeatScout, RECON, and Tandem Repeat Finder.

To classify transposons we used [RepeatMasker](http://www.repeatmasker.org/) with databases from [GIRI](https://www.girinst.org/repbase/) with multiple types of libraries

To identify de novo and classify modile elements in raw reads we used Repeat Explorer from [Galaxy server](http://repeatexplorer.org/)

## Results

In general, using RepeatModeller+Repeatmasker combination we got following results:

![RepeatModeller+RepeatMasker results](https://github.com/NickPanyushev/IB_Himasthla/blob/master/Plots/Counts.png)

According to RepeatMasker search, based on RepeatModeller generated library the most abundant transposon families are RTE-BovB, CR1 and Gypsy. All these families belong to class I (retrotransposons).

RepeatExplorer reported about 10 percents of repetitive elements in the H. elongata transcriptome. Only 0,01% fell on Bel-Pao elements, 1.03 - Gypsy and 0.09 - Satellites. 

Thus, RepetExplorer turned out to be a less effective tool in the annotation of mobile elements




