On your current directory work, you have large amount dir or file that need to rename,as a consequence, using perl and Linux command line
processed it should be takon,the follow command can be used for this situation.

$ls ./ |perl -ne 'chomp;if(/(.*)(KEGG).stat/){print "mv $_ $1$2\.map\n"}' |sh
For instance, directory name:CS2_vs_CS4.KEGG.stat


