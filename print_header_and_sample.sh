Today is sullen day,however we should take some funny from what you do now,which could make us happy,so below command on Linux SHELL must be interesting.
#get AllSample_GC_Q.stat file header　and sample with only one command line for perl scripts on Linux command line
cat Data_Assess/AllSample_GC_Q.stat |perl -e 'while(<>){if(/SampleID|ZX01/){print;}else{next;}}' >ZX01_GC_Q.stat
