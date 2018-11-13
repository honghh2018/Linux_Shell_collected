#!/usr/bin/perl
use warnings;
use strict;

open(IN,"$ARGV[0]") or die $!; #input fasta file
open(IN1,"$ARGV[1]") or die $!; #$input DEG file
open(OUT,">result.list");

my %fa=();
$/=">";
while(<IN>){
        chomp;
        next if(/^$/);
        my ($gene_id,$seq)=split /\n+/,$_,2;
        my $real=(split /\s+/,$gene_id)[0];
        $seq=~s/\n//g;
        $fa{$real}=$seq;
}
close IN;
$/="\n";
while(<IN1>){
        chomp;
        if(/\#/){
                print OUT $_,"\t","gene_seq","\n";
                next;
        }
        my($gene_id,$left)=(split /\s+/,$_,2);
        if(exists $fa{$gene_id}){
                print OUT $gene_id,"\t",$left,"\t",$fa{$gene_id},"\n";
        }

}

close IN1;
close OUT;
