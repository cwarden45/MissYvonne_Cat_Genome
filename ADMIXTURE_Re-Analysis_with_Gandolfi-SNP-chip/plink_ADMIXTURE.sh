#!/bin/bash

PREFIX=Gandolfi_felCat8_plus_MissYvonne

/opt/plink2 --make-pgen --sort-vars --vcf $PREFIX.vcf --out $PREFIX
/opt/plink2 --pfile $PREFIX --make-bed --out $PREFIX

/opt/admixture_linux-1.3.0/admixture $PREFIX.bed 2 --supervised
#/opt/admixture_linux-1.3.0/admixture $PREFIX.bed 2
#/opt/admixture_linux-1.3.0/admixture $PREFIX.bed 4