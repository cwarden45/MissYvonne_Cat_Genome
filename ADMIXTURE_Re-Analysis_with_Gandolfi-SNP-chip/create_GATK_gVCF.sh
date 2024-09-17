#!/bin/sh

BAM=felCat8.gatk.bam
gVCF=felCat8.gatk.gVCF
gVCF2=felCat8.gatk.flagged.gVCF
REF=../../felCat8_Ref/felCat8.fa
DICT=../../felCat8_Ref/felCat8.dict

java -jar -Xmx6g /opt/picard-v2.21.9.jar CreateSequenceDictionary R=$REF O=$DICT

/opt/gatk-4.1.4.1/gatk --java-options -Xmx6g HaplotypeCaller --input $BAM --reference $REF --output $gVCF --dont-use-soft-clipped-bases true --emit-ref-confidence GVCF
/opt/gatk-4.1.4.1/gatk --java-options -Xmx6g VariantFiltration --variant $gVCF --output $gVCF2 -window 35 -cluster 3 -filter-name QD -filter "QD < 2.0" -filter-name FS -filter "FS > 30.0"