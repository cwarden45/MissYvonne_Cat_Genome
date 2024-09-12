**basepaws (mouth swab, with raw data as FASTQ+gVCF)**:

A [Whole Genome Sequencing](https://basepaws.com/products/whole-genome-sequencing?variant=41082749976773) kit was ordered for [Miss Yvonne](https://www.petfinder.com/cat/miss-yvonne-71559819/ca/los-angeles/kitten-rescue-ca55/), whose sample was collected at [Tail Town](https://www.tailtowncats.com/) on 5/10/2024.

## Raw Data from Basepaws

**Interleaved FASTQ #1 (*Run 317, Lane 1*):** [AC.GJ.95-31220913500144-LP.1857.H11-L1.R317-WGS.fastq.gz](https://storage.googleapis.com/miss-yvonne-cat-genome/AC.GJ.95-31220913500144-LP.1857.H11-L1.R317-WGS.fastq.gz)
 - Also available from [precisionFDA]()

**Interleaved FASTQ #2 (*Run 317, Lane 8*):** [AC.GJ.95-31220913500144-SP.441.A6-L8.R317-WGS.fastq.gz](https://storage.googleapis.com/miss-yvonne-cat-genome/AC.GJ.95-31220913500144-SP.441.A6-L8.R317-WGS.fastq.gz)
 - Also available from [precisionFDA]()

**Provided gVCF:** [missyvonne.gvcf.gz](https://storage.googleapis.com/miss-yvonne-cat-genome/missyvonne.gvcf.gz)
 - Also available from [precisionFDA]()

**Index for Provided gVCF:** [missyvonne.gvcf.gz.tbi](https://storage.googleapis.com/miss-yvonne-cat-genome/missyvonne.gvcf.gz.tbi)
 - Also available from [precisionFDA]()

## Processed Intermediate Files

Similar output files (for *BWA-MEM* with `samtools idxstats` quantification) for 2 libraries for my cat (Bastu) can be found [here](https://github.com/cwarden45/Bastu_Cat_Genome/tree/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/Additional_Alignments/Extended_Reference-2024).

*Kraken2* output files for 2 libraries for my cat (Bastu) can be found [here](https://github.com/cwarden45/Bastu_Cat_Genome/tree/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/Kraken-OUT).

## Additional Files

`create_PairedEnd_R1_and_R2--WITH_STARTING_LIBRARY_INFO.pl` - script to convert provided reads to paried in format.  Unlike the [second WGS sample](https://github.com/cwarden45/Bastu_Cat_Genome/blob/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/create_PairedEnd_R1_and_R2.pl) for Bastu, there is library information that was kept in the interleaved reads (and the code was modified to keep that information).
