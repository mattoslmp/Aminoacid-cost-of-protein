#!/usr/bin/perl -w
# Autor: LEANDRO DE MATTOS PEREIRA, fev 2015

use strict;

my $proteinfilename = $ARGV[0]; ### Primeiro Argumento é o arquivo FASTA contendo as proteínas de interesse: Leishmania sps
chomp $proteinfilename;
my $organism = $ARGV[1]; 
chomp $organism;
#### Segundo Argumento é a Listas de IDS(Acessos) que você gostaria de procurar no arquivo fasta
#### Para isto foi usado uma expressão regular que reconheçe o IDs contendo determinado padrão
#### Dica: se você quiser reconhecer sequencias de outro padrão, por exemplo A.thaliana ATG1433, mudar a expressão regular

	

my %fasta;
my $id;

unless ( open(PROTEINFILE, $proteinfilename)) {
	print "Cannot open file\"$proteinfilename\"\n\n";
exit;
}

while(<PROTEINFILE>) {
	if (/^(>.*)$/) {
		$id = $1;
		#print $1,"\n";
	}
	elsif (/^([A-Z]+)$/i) {
		$fasta{$id} .= $1;
		#print $1,"\n";
	}
}
close PROTEINFILE;

my %sonda;
my $nome=0;


unless (open(INFILE, '<' ,"$organism")) {
	print "Cannot open file\"$organism\"\n\n";
	exit;
}
	

while(<INFILE>) {
	
	if (/(^\w+\d+.\w\.\d{1,4})/) { 
	   my @nome=$1;
		   my @caracter=split(/w+\d+.\w\.\d{1,4}/,$nome[0]);
	foreach my $key (keys %fasta) {
	my $caracter;
	if ($key=~/$caracter[0]/) {
	print $key,"\n",$fasta{$key},"\n";
	}
}
}
}
close(INFILE);

