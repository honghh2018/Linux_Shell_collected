#comment:match ">"　－Ａ1 show the match line,and the next line

head -2 out.longest_transcript.fa |grep \>  -A1 |less
