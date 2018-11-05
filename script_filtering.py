
# coding: utf-8

# In[42]:


from Bio.Blast import NCBIXML
from Bio import SeqIO
result_handle = open("alignments_7fmt.xml")
blast_records = NCBIXML.parse(result_handle)
with open("transposes",'w') as handle:
    for entry in blast_records:
        for alignment in entry.alignments:

            if "transpos" in alignment.title or "mobil" in alignment.title or "repet" in alignment.title and "transport" not in alignment.title:
                handle.write(entry.query+"\n")

handle = SeqIO.parse("../Himasthla-families.fa","fasta")
with open("transposones_list.fa",'w')as outfile:
    for i in handle:
        if "Unknown" not in i.id:
            SeqIO.write(i, outfile,"fasta")

