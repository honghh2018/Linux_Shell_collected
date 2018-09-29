gff3 file had some problem with format,then you can try below command to fix it with awk and sed command,the required manipulation  derived from your file
,as below command no satified you,you can modify it.
cat Rubus_occidentalis_v1.1.lifted.gff3|sed s/\;Name=.*//g|awk 'BEGIN{OFS="\t";}{if($3~/mRNA/){print $1,$2,"gene",$4,$5,$6,$7,$8,$9;print $1,$2,"mRNA",$4,$5,$6,$7,$8,$9".1"";Parent="$9".1"}
else if($1~/##.*/){print $0}else{print $0".1"}}'|sed s/\;Alias=.*//g|sed s/\=ID//g|awk 'BEGIN{OFS="\t"} 
{if($3~/exon/) sub(":exon",".1:exon",$9);print $0}'|awk 'BEGIN{OFS="\t"} {if($3~/CDS/) sub(":cds",".1:cds",$9);print $0}'|less -SN 

good luck.
