**basepaws (mouth swab, with raw data as FASTQ+gVCF)**:

A [Whole Genome Sequencing](https://basepaws.com/products/whole-genome-sequencing?variant=41082749976773) kit was ordered for [Miss Yvonne](https://www.petfinder.com/cat/miss-yvonne-71559819/ca/los-angeles/kitten-rescue-ca55/), whose sample was collected at [Tail Town](https://www.tailtowncats.com/) on 5/10/2024.

## Raw Data from Basepaws

**Interleaved FASTQ #1 (*Run 317, Lane 1*):** [AC.GJ.95-31220913500144-LP.1857.H11-L1.R317-WGS.fastq.gz](https://storage.googleapis.com/miss-yvonne-cat-genome/AC.GJ.95-31220913500144-LP.1857.H11-L1.R317-WGS.fastq.gz)
 - Also available in [precisionFDA](https://precision.fda.gov/home/files/file-GqVf1J805PZb38VJK1y69f5Z-2)

**Interleaved FASTQ #2 (*Run 317, Lane 8*):** [AC.GJ.95-31220913500144-SP.441.A6-L8.R317-WGS.fastq.gz](https://storage.googleapis.com/miss-yvonne-cat-genome/AC.GJ.95-31220913500144-SP.441.A6-L8.R317-WGS.fastq.gz)
 - Also available in [precisionFDA](https://precision.fda.gov/home/files/file-GqVbVp80xxvXVk3k5yy8G3yz-2)

**Provided gVCF:** [missyvonne.gvcf.gz](https://storage.googleapis.com/miss-yvonne-cat-genome/missyvonne.gvcf.gz)
 - Also available in [precisionFDA](https://precision.fda.gov/home/files/file-GqVf1f80bfGGXQ31PygFb6jB-2)

**Index for Provided gVCF:** [missyvonne.gvcf.gz.tbi](https://storage.googleapis.com/miss-yvonne-cat-genome/missyvonne.gvcf.gz.tbi)
 - Also available in [precisionFDA](https://precision.fda.gov/home/files/file-GqVf1f0007qFQ4Kgkgq4BKyy-2)

## Processed Intermediate Files

**Combined Forward (*R1*) Read:** []()

**Combined Reverse (*R2*) Read:** []()

The *fastp*-trimmed reads have not directly been uploaded.  However, the output *reports* (.html and .json) are uploaded in this repository.

Similar files for *fastp* for Bastu (as well as for human reads for myself) can be found [here](https://github.com/cwarden45/Bastu_Cat_Genome/tree/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/fastp_results).  Files matching Miss Yvonne's data were created using `run_fastp-AltParam2.sh`.

Similar output files (for *BWA-MEM* with `samtools idxstats` quantification) for 2 libraries for my cat (Bastu) can be found [here](https://github.com/cwarden45/Bastu_Cat_Genome/tree/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/Additional_Alignments/Extended_Reference-2024).  Files matching Miss Yvonne's data were created using `run_BWA-MEM_PE.py`.

*Kraken2* output files for 2 libraries for my cat (Bastu) can be found [here](https://github.com/cwarden45/Bastu_Cat_Genome/tree/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/Kraken-OUT).

## Additional Files

`create_PairedEnd_R1_and_R2--WITH_STARTING_LIBRARY_INFO.pl` - script to convert provided reads to paried in format.  Unlike the [second WGS sample](https://github.com/cwarden45/Bastu_Cat_Genome/blob/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/create_PairedEnd_R1_and_R2.pl) for Bastu, there is library information that was kept in the interleaved reads for Miss Yvonne (and the code was modified to keep that information).

`combine_reads.sh` - script used to combine reads from 2 libraries (still separated for forward *R1* reads and reverse *R2* reads).

`ScriptX.R` was used to create a heatmap to visualize reads along with the data from Bastu:

![fastp-filtered assignments](Oral6SUB3_FILTERED_Braken_genera-heatmap_quantified-TOP20.PNG "fastp-filtered assignments")

An earlier heatmap (with only bacterial alignments) is available [here](https://github.com/cwarden45/Bastu_Cat_Genome/blob/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/fastp_results/Oral6SUB3_FILTERED_Braken_genera-heatmap_quantified-TOP20.PNG).
