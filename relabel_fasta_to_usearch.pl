#!/usr/bin/perl -w

# Autor: LEANDRO DE MATTOS PEREIRA
# PhD Biologia Computacional e Sistemas - Fiocruz- IOC
#### Pos-doc HCPA - Hospital das Clinicas de Porto Alegre
### 28/11/2016 
###### script para renomear as sequencias de acordo com entrada para USEARCH
### Este script utiliza a saida do programa add_qiime_labels.py e coloca o arquivo .fasta na estrutura  necessaria para execucao do pipeline UPARSER
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
	if (/(\>sample\d+_\d+)\s+(\NIPON:\d+:\d+)/) { 


#### Expressao regular: (\NIPON:\d+:\d+), esta varia de acordo com o nome do barcode : NIPON.... (Sequenciador de DNA)

  
		$id = $1;
		$barcode=$2;
		
			#print $1,"\t";
			print ">";
			print $barcode;
			print ";barcodelabel=";
			
			#print $1,"\n"; 
		}
		
			#if (/(\w+.\d)/) {
			if (/(sample\d+)/) { 
		my $sample = $1;
		print $1,";\n" ;
		}
		
			
	#}
		
	elsif (/^([A-Z]+)$/i) {
		$fasta{$id} .= $1;
		
		
		print $1,"\n";
		
	}
}
#}
close PROTEINFILE;

