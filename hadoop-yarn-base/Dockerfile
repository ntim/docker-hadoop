FROM ntim/hadoop-base
# Install python3 and scientific libraries
RUN yum -y install yum-utils
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u python36u-pip python36u-tkinter
RUN yum clean all
RUN pip3.6 install numpy scipy pandas matplotlib
# Set environment variable for pyspark
ENV PYSPARK_PYTHON /usr/bin/python3.6