#awk $2=11 second column equal "11",print line owned "11"
#-d indicate seperate symbol character,default tab; -f1 indicate first column
$cat kmeans_cluster.txt |awk '$2==11{print $0}' |cut -f1 -d'	' |less 
$cat kmeans_cluster.txt |awk '$2==11{print $0}' |cut -f1 -d'	' > file  #use perl to build the script
The below command on system no happy,you should type.
$cat kmeans_cluster.txt|awk ''$2==11{print $0}' |cut -f1 >file
When you is aware of awk filtered to cerntainly column,you should simply type below command to try what you want.
$cat kmeans_cluster.txt |awk '$2==11{print $1}' |less -SN
if you want some special cool skill to perform this work,the circle passed through system must be given.
$mkdir Result
$for i in {1..11};do cat kmeans_cluster.txt |awk '$2=="'$i'"{print $1}' >Result/CD$i;done  #note:awk used shell variable must be use double quotation 
 and single quotation mark.
#comments:
#Kmeans cluster,first classify,then cluster
#heatmap cluster was arrangement cluster differ with Kmeans cluster 
