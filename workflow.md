
**1. removing human, bacteria and host contamination using BBDuk:**

`% bbduk.sh in=read1.fastqsanger.fastq in2=read2.fastqsanger.fastq ref=hg19_main_mask_ribo_animal_allplant_allfungus.fa.gz,fusedEPmasked2.fa.gz,moll_masked.fa out=clean1.fq out2=clean2.fq outm=matched.fq k=31 -Xmx150g`

Input --                          100424418 reads

Total Removed --                  2287450 reads    

Result --                         98136968 reads         


**2. Decontamination from rRNA using BBmap:**

`% bbduk.sh -Xmx100g in=clean1.fq in2=clean2.fq ref=tepm_finally/SILVA_132_SSURef_tax_silva.fasta,tepm_finally/SILVA_132_LSURef_tax_silva.fasta out=finally_cleaned1.fq out2=finally_cleaned2.fq outm=matched.fq k=31 -Xmx150g`

Input -- 98136968 reads       

Removed -- 2903390 reads (2.96%)

Result -- 95233578 reads




**3. Adapters and unpaired reads removing:**

`% java -jar trimmomatic-0.36.jar PE clean1.fq clean2.fq clean1-P.fq clean1-U.fq clean2-P.fq clean2-U.fq TRAILING:20 LEADING:20 SLIDINGWINDOW:4:20 ILLUMINACLIP:TruSeq3-PE-2.fa:2:30:10  MINLEN:30`
 
Input -- 95233578 reads

Removed -- 8947812 reads

Result -- 86285766 reads



**4. Assembly using rnaSPAdes:**

`% spades.py --rna -1 clean1.fq -2 clean2.fq -t 30 -m 300 -o ./assembly`

 
**5. Quality assesment using rnaQUAST**

`% python rnaQUAST.py -c transcripts.fasta --busco_lineage metazoa_odb9 -o ../qualuty_assesment --gene_mark --blat`


**Short summary report**


 == BASIC TRANSCRIPTS METRICS == 

Transcripts --                                            122671                   

Transcripts > 500 bp --                                   25381                    

Transcripts > 1000 bp --                                 13952

 == BUSCO METRICS == 

Complete --                                               80.982                   

Partial --                                            8.793

 == GeneMarkS-T METRICS == 

Predicted genes --                                        19470
