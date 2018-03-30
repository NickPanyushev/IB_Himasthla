# IB_Himasthla
This project is about TE search in Himasthla transcriptome

**1. removing human, bacteria and host contamination using BBDuk:**

`% bbduk.sh in=read1.fastqsanger.fastq in2=read2.fastqsanger.fastq ref=hg19_main_mask_ribo_animal_allplant_allfungus.fa.gz,fusedEPmasked2.fa.gz,moll_masked.fa out=clean1.fq out2=clean2.fq outm=matched.fq k=31 -Xmx150g`


Total Removed:                  2287450 reads    
Result:                         98136968 reads         


**2. Decontamination from rRNA using BBmap:**

`% bbmap.sh -Xmx100g ref=SILVA_132_SSURef_tax_silva.fasta,SILVA_132_LSURef_tax_silva.fasta in=clean1.fq in2=clean2.fq outu=finally_cleaned1.fq outu2=finally_cleaned1.fq outm=matched.fq nodisk`

**3. Adapters and unpaired reads removing:**

`% java -jar trimmomatic-0.36.jar PE clean1.fq clean2.fq clean1-P.fq clean1-U.fq clean2-P.fq clean2-U.fq TRAILING:20 LEADING:20 SLIDINGWINDOW:4:20 ILLUMINACLIP:TruSeq3-PE-2.fa:2:30:10  MINLEN:30`
 
final quantity: 89184918 reads


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
