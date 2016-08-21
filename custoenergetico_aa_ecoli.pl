#!/usr/bin/perl
use strict;
use warnings;

my $cont=0;
my $contA=0;
my $contC=0;
my $contD=0;
my $contE=0;
my $contF=0;
my $contG=0;
my $contH=0;
my $contI=0;
my $contK=0;
my $contL=0;
my $contM=0;
my $contN=0;
my $contP=0;
my $contQ=0;
my $contR=0;
my $contS=0;
my $contT=0;
my $contV=0;
my $contW=0;
my $contY=0;


####MKLAVYSTKQYDKKYLQQVN
print "Digite a sequencia em aninoacidos de E.coli que voce quer calcular o custo energético P:";
my $sequencia= <STDIN>;
chomp $sequencia;

my @gene = split (//,$sequencia);
my $tamanho=$#gene+1;
my $cont++;
for (my $x=0;$x<=$#gene;$x++) {
# for ######################################################
    # IF ###################################################    


    if($gene[$x] eq "A") {
	$contA++;
    }
    
    if ($gene[$x] eq "C") {
    $contC++;
   }
       if ($gene[$x] eq "D") {
        $contD++;
   }
    
   if ($gene[$x] eq "E") {
       $contE++;
        }
   if ($gene[$x] eq "F") {
       $contF++;
    }
     if ($gene[$x] eq "G") {
       $contG++;
    }
    if($gene[$x] eq "H") {
	$contH++;
    }
 if($gene[$x] eq "I") {
	$contI++;
    }   
    if($gene[$x] eq "K") {
	$contK++;
    }
     if($gene[$x] eq "L") {
	$contL++;
    }
     if($gene[$x] eq "M") {
	$contM++;
    }
     if($gene[$x] eq "N") {
	$contN++;
    }
     if($gene[$x] eq "P") {
	$contP++;
    }
     if($gene[$x] eq "Q") {
	$contQ++;
    }
     if($gene[$x] eq "R") {
	$contR++;
    }
     if($gene[$x] eq "S") {
	$contS++;
    }
     if($gene[$x] eq "T") {
	$contT++;
    }
     if($gene[$x] eq "V") {
	$contV++;
    }
     if($gene[$x] eq "W") {
	$contW++;
    }
     if($gene[$x] eq "Y") {
	$contY++;
    }
   }
 
print "A quantidade de A eh $contA\n";
my $custoA=($contA*11.7);
print "A quantidade de C eh $contC\n";
my $custoC=($contC*24.7);
print "A quantidade de D eh $contD\n";
my $custoD=($contD*12.7);
print "A quantidade de E eh $contE\n";
my $custoE=($contE*15.3);
print "A quantidade de F eh $contF\n";
my $custoF=($contF*52.0);
print "A quantidade de G eh $contG\n";
my $custoG=($contG*11.7);
print "A quantidade de H eh $contH\n";
my $custoH=($contH*38.3);
print "A quantidade de I eh $contI\n";
my $custoI=($contI*32.3);
print "A quantidade de K eh $contK\n";
my $custoK=($contK*30.3);
print "A quantidade de L eh $contL\n";
my $custoL=($contL*27.3);
print "A quantidade de M eh $contM\n";
my $custoM=($contM*34.3);
print "A quantidade de N eh $contN\n";
my $custoN=($contN*14.7);
print "A quantidade de P eh $contP\n";
my $custoP=($contP*20.3);
print "A quantidade de Q eh $contQ\n";
my $custoQ=($contQ*16.3);
print "A quantidade de R eh $contR\n";
my $custoR=($contR*27.3);
print "A quantidade de S eh $contS\n";
my $custoS=($contS*11.7);
print "A quantidade de T eh $contT\n";
my $custoT=($contT*18.7);
print "A quantidade de V eh $contV\n";
my $custoV=($contV*23.3);
print "A quantidade de W eh $contW\n";
my $custoW=($contW*74.3);
print "A quantidade de Y eh $contY\n";
my $custoY=($contY*50.0);
print " A quantidade de aminoacidos total eh $tamanho\n";
my $totalcusto= $custoA+$custoC+$custoD+$custoE+$custoF+$custoG+$custoH+$custoI+$custoK+$custoL+$custoM+$custoN+$custoP+$custoQ+$custoR+$custoS+$custoT+$custoV+$custoW+$custoY;
print "O custo energético de ~P total e: $totalcusto\n";
exit;




