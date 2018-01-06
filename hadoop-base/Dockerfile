FROM openjdk:8-jre-slim
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
# Set the hadoop version
ENV HADOOP_VERSION 2.9.0
# Download hadoop and unpack in /usr/local
RUN wget -q -O - "http://archive.apache.org/dist/hadoop/core/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz" | gunzip | tar -x -C /usr/local 
# Set hadoop home environment variable and add to path
ENV HADOOP_HOME /usr/local/hadoop-$HADOOP_VERSION
ENV PATH $PATH:${HADOOP_HOME}/bin
# Create a symlink to /usr/local/hadoop
RUN ln -s $HADOOP_HOME /usr/local/hadoop
# Add customized configuration
ADD etc /usr/local/hadoop/etc
