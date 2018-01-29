FROM centos:centos7.4.1708
RUN yum install -y java-1.8.0-openjdk wget which exec && yum clean all
# Set java home
ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk/
# Set the hadoop version
ENV HADOOP_VERSION 2.9.0
# Download hadoop and unpack in /usr/share
RUN wget -q -O - "http://archive.apache.org/dist/hadoop/core/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz" | gunzip | tar -x -C /usr/share
# Set hadoop home environment variable and add to path
ENV HADOOP_HOME /usr/share/hadoop-$HADOOP_VERSION
ENV HADOOP_CONF_DIR $HADOOP_HOME/etc/hadoop
ENV PATH $PATH:${HADOOP_HOME}/bin
# Create a symlink to /usr/share/hadoop
RUN ln -s $HADOOP_HOME /usr/share/hadoop
# Add customized configuration
ADD etc /usr/share/hadoop/etc
# Add hadoop group
RUN groupadd hadoop
# Add users for hdfs and yarn
RUN useradd hdfs -G hadoop
RUN useradd yarn -G hadoop
# Make the hadoop directory writable
RUN mkdir /var/hadoop && chown hdfs:hadoop /var/hadoop
