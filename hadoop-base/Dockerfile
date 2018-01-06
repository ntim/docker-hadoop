FROM openjdk:8-jdk-stretch
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
# Add miniconda for pyspark
RUN wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && /bin/bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/local/miniconda3 && rm Miniconda3-latest-Linux-x86_64.sh
# Update python alternatives to supply python3 by default
ENV PATH $PATH:/usr/local/miniconda3/bin
RUN update-alternatives --install /usr/bin/python python /usr/local/miniconda3/bin/python 1
RUN update-alternatives --install /usr/bin/pip pip /usr/local/miniconda3/bin/pip 1
# Install some scientific libraries
RUN conda install numpy scipy pandas matplotlib
