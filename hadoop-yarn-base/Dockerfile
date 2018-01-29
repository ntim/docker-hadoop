FROM ntim/hadoop-base:2.9.0
# Install python3 and scientific libraries
RUN yum -y install yum-utils
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u python36u-pip python36u-tkinter
RUN yum clean all
RUN pip3.6 install numpy scipy pandas matplotlib
# Set environment variable for pyspark
ENV PYSPARK_PYTHON /usr/bin/python3.6
# Create log directory
RUN mkdir -p /var/hadoop/nm-local-dir && chown yarn:hadoop /var/hadoop/nm-local-dir
ENV YARN_LOG_DIR /var/hadoop/yarn
RUN mkdir -p /var/hadoop/yarn && chown yarn:hadoop /var/hadoop/yarn
