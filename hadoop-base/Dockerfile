FROM centos:centos7.4.1708
RUN yum install -y java-1.8.0-openjdk wget which exec && yum clean all
# Set java home
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.151-5.b12.el7_4.x86_64/jre/
# Set the hadoop version
ENV HADOOP_VERSION 2.9.0
# Download hadoop and unpack in /usr/local
RUN wget -q -O - "http://archive.apache.org/dist/hadoop/core/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz" | gunzip | tar -x -C /usr/local 
# Set hadoop home environment variable and add to path
ENV HADOOP_HOME /usr/local/hadoop-$HADOOP_VERSION
ENV HADOOP_CONF_DIR $HADOOP_HOME/etc/hadoop
ENV PATH $PATH:${HADOOP_HOME}/bin
# Create a symlink to /usr/local/hadoop
RUN ln -s $HADOOP_HOME /usr/local/hadoop
# Add customized configuration
ADD etc /usr/local/hadoop/etc
