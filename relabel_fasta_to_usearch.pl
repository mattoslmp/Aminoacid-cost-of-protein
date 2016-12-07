#!/usr/bin/perl -w


# Autor: LEANDRO DE MATTOS PEREIRA
### 28/11/2016 
###### script para renomear as sequencias de acordo com entrada para USEARCH
########################## Metabarcoding analises #####################################
use strict;

my $proteinfilename = $ARGV[0]; 
chomp $proteinfilename;

my %fasta;
my $id;
my $barcode;
my $sample;

unless ( open(PROTEINFILE, $proteinfilename)) {
	print "Cannot open file\"$proteinfilename\"\n\n";
exit;
}

while(<PROTEINFILE>) {
	if (/(\>\w+.\d_\d+)\s+(\NIPON:\d+:\d+)/) {
		$id = $1;
		$barcode=$2;
		
			#print $1,"\t";
			print ">";
			print $barcode,";barcodelabel=";
			#print $1,"\n"; 
		}
		
			if (/(\w+.\d)/) { 
		my $sample = $1;
		print $sample,";\n" ;
		}
		
			
	#}
		
	elsif (/^([A-Z]+)$/i) {
		$fasta{$id} .= $1;
		
		
		print $1,"\n";
		
	}
}
#}
close PROTEINFILE;

