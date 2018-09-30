#!/usr/bin/perl 
use warnings;
use strict;
use Getopt::Long;

#the function bash getopts and　perl getoptions stand with no together
my %options;
getopts('a:b:c:d:e:f:g:i:j:k:l:m:n:o:p:q:r:s:t:u:v:w:x:y:z:h', \%options); #under character colon show the mark have para or no 

my ($para1,$para2);
GetOptions(
        "f:s" =>\$para1,
        "o:s" =>\$para2,
) or die "your para wrong!";

#sub USAGE{
#       print "you para wrong!\n";
#}

#if(!defined $options{'a'}){
#       my $usage=qq'
#               Usage:perl $0 -a <string> -b <string>
#';
#       print $usage;
#}

#print $options{'a'},"\t",$options{'b'},"\n";  #print successfully
print $para1,"\t",$para2,"\n";
