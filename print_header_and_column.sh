
head -1 Data_Assess/AllSample_GC_Q.stat && less Data_Assess/AllSample_GC_Q.stat |grep L283 |awk '{print $2}'  #print header　and $2 column
###awk　condition judgement 
 head -1 Data_Assess/AllSample_GC_Q.stat && cat Data_Assess/AllSample_GC_Q.stat|awk '{if(/L283/) print $2}'



