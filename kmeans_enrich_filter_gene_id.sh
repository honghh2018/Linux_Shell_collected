#awk $2=11 second column equal "11",print line owned "11"
#-d indicate seperate symbol character,default tab; -f1 indicate first column
$cat kmeans_cluster.txt |awk '$2==11{print $0}' |cut -f1 -d'	' |less 
$cat kmeans_cluster.txt |awk '$2==11{print $0}' |cut -f1 -d'	' > file  #use perl to build the script
#comments:
#Kmeans cluster,first classify,then cluster
#heatmap cluster was arrangement cluster differ with Kmeans cluster 
