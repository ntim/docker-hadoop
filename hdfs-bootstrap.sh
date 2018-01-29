hdfs dfs -mkdir -p /user/hdfs 
hdfs dfs -mkdir -p /user/yarn 
hdfs dfs -mkdir -p /user/zeppelin 
hdfs dfs -chown hdfs:hadoop /user/hdfs 
hdfs dfs -chown yarn:hadoop /user/yarn 
hdfs dfs -chown zeppelin:hadoop /user/zeppelin 
hdfs dfs -mkdir /tmp 
hdfs dfs -chown hdfs:hadoop /tmp 
hdfs dfs -chmod a+rwX /tmp 
