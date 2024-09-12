#!/bin/perl

use strict;
use Bio::SeqIO;

#NOTE: This script creates .fastq files, and THEN compresses them.
#NOTE: Thus, the output name should be .fastq, not .fastq.gz.

my $in_interleaved = "AC.GJ.95-31220913500144-LP.1857.H11-L1.R317-WGS.fastq.gz";
my $out_R1 = "AC.GJ.95-31220913500144-LP.1857.H11-L1.R317-WGS_R1.fastq";
my $out_R2 = "AC.GJ.95-31220913500144-LP.1857.H11-L1.R317-WGS_R2.fastq";

#my $in_interleaved = "AC.GJ.95-31220913500144-SP.441.A6-L8.R317-WGS.fastq.gz";
#my $out_R1 = "AC.GJ.95-31220913500144-SP.441.A6-L8.R317-WGS_R1.fastq";
#my $out_R2 = "AC.GJ.95-31220913500144-SP.441.A6-L8.R317-WGS_R2.fastq";

#modified from version where library information was removed from reads: https://github.com/cwarden45/Bastu_Cat_Genome/blob/master/Basepaws_Notes/Reformat_Basepaws_WGS2_and_Combine/create_PairedEnd_R1_and_R2.pl
#...keep note that used example from https://stackoverflow.com/questions/59899310/how-to-read-data-in-gz-file-very-fast-in-perl-programming

open(R1, "> $out_R1")||die("Cannot open $out_R1\n");
open(R2, "> $out_R2")||die("Cannot open $out_R2\n");

my $line_count = 0;

open my $zcat, "zcat $in_interleaved |";
while (<$zcat>) {
	my $line = $_;
	
	$line_count +=1;
	my $relative_index = $line_count %8;
	my $read_pair = int(($line_count-1) /8 + 1);
	
	#print "$read_pair : $relative_index : $line\n";
	
	if ($relative_index == 1){
		#create new name for R1
		print R1 $line;
	}elsif(($relative_index >= 2)&($relative_index <=4)){
		print R1 $line; 
	}elsif ($relative_index == 5){
		#create new name for R2
		print R2 $line;
	}else{
		print R2 $line; 
	}#end else
  
	#if ($line_count == 20){
		#	  exit;
	#}
	
	if($line_count % 800000 == 0){
		my $million_count = ($line_count/8) / 1000000;
		printf("Processed %.1fM read pairs...\n",$million_count);
	}#end if($line_count % 80000 == 0)
}#end while (<$zcat>) 
close $zcat;

close(R1);
close(R2);

print "Compresssing Forward Read in Pair (R1)...\n";
my $command = "gzip $out_R1";
system($command);

print "Compresssing Reverse Read in Pair (R2)...\n";
$command = "gzip $out_R2";
system($command);

exit;