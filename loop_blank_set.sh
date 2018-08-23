#when you run the command line on Linux bash shell with blank,you should try below method.
IFS='$\n';for i in `cat command.list`;do sh $i;done