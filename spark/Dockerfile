FROM ntim/hadoop-yarn-base:2.9.0
# Set the spark version
ENV SPARK_VERSION 2.2.1
# Download spark and unpack to /usr/share
RUN wget -q -O - "http://archive.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-without-hadoop.tgz" | gunzip | tar -x -C /usr/share 
# Set spark home environment variable and add to path
ENV SPARK_HOME /usr/share/spark-$SPARK_VERSION-bin-without-hadoop
ENV PATH $PATH:${SPARK_HOME}/bin
ENV SPARK_DIST_CLASSPATH $HADOOP_HOME/etc/hadoop:$HADOOP_HOME/share/hadoop/common/lib/*:$HADOOP_HOME/share/hadoop/common/*:$HADOOP_HOME/share/hadoop/hdfs:$HADOOP_HOME/share/hadoop/hdfs/lib/*:$HADOOP_HOME/share/hadoop/hdfs/*:$HADOOP_HOME/share/hadoop/yarn/lib/*:$HADOOP_HOME/share/hadoop/yarn/*:$HADOOP_HOME/share/hadoop/mapreduce/lib/*:$HADOOP_HOME/share/hadoop/mapreduce/*:$HADOOP_HOME/contrib/capacity-scheduler/*.jar
# Create a symlink to /usr/share/spark
RUN ln -s $SPARK_HOME /usr/share/spark
# Download Elasticsearch Hadoop
ENV ES_HADOOP_VERSION 6.1.1
RUN yum install -y unzip
RUN wget -q http://download.elastic.co/hadoop/elasticsearch-hadoop-$ES_HADOOP_VERSION.zip && unzip elasticsearch-hadoop-$ES_HADOOP_VERSION.zip && mv elasticsearch-hadoop-$ES_HADOOP_VERSION/dist/elasticsearch-spark-20_2.11-$ES_HADOOP_VERSION.jar /usr/share/spark/jars/ && rm -rf elasticsearch-hadoop-$ES_HADOOP_VERSION elasticsearch-hadoop-$ES_HADOOP_VERSION.zip
# Download and build databricks xml library
# RUN git clone https://github.com/databricks/spark-xml.git && cd spark-xml && sbt/sbt package 
# Cleanup
RUN yum clean all
# Add custom configuration
ADD conf /usr/share/spark/conf
# Spark entrypoint
USER yarn
ENTRYPOINT ["spark-submit", "--master", "local"]
CMD ["/usr/share/spark/examples/src/main/python/pi.py"]
