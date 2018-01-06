FROM ntim/hadoop-yarn-resourcemanager
# Set the spark version
ENV SPARK_VERSION 2.2.1
# Download spark and unpack to /usr/local
RUN wget -q -O - "http://archive.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-without-hadoop.tgz" | gunzip | tar -x -C /usr/local 
# Set spark home environment variable and add to path
ENV SPARK_HOME /usr/local/spark-$SPARK_VERSION-bin-without-hadoop
ENV PATH $PATH:${SPARK_HOME}/bin
ENV SPARK_DIST_CLASSPATH $HADOOP_HOME/etc/hadoop:$HADOOP_HOME/share/hadoop/common/lib/*:$HADOOP_HOME/share/hadoop/common/*:$HADOOP_HOME/share/hadoop/hdfs:$HADOOP_HOME/share/hadoop/hdfs/lib/*:$HADOOP_HOME/share/hadoop/hdfs/*:$HADOOP_HOME/share/hadoop/yarn/lib/*:$HADOOP_HOME/share/hadoop/yarn/*:$HADOOP_HOME/share/hadoop/mapreduce/lib/*:$HADOOP_HOME/share/hadoop/mapreduce/*:$HADOOP_HOME//contrib/capacity-scheduler/*.jar
# Create a symlink to /usr/local/hadoop
RUN ln -s $SPARK_HOME /usr/local/spark
# Spark entrypoint
ENTRYPOINT ["spark-submit", "--master", "local"]
CMD ["/usr/local/spark/examples/src/main/python/pi.py"]