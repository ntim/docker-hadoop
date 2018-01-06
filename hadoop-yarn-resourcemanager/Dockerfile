FROM ntim/hadoop-base
# Add miniconda for pyspark
RUN wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && /bin/bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/local/miniconda3 && rm Miniconda3-latest-Linux-x86_64.sh
# Update python alternatives to supply python3 by default
ENV PATH $PATH:/usr/local/miniconda3/bin
RUN update-alternatives --install /usr/bin/python python /usr/local/miniconda3/bin/python 1
RUN update-alternatives --install /usr/bin/pip pip /usr/local/miniconda3/bin/pip 1
# Install some scientific libraries
RUN conda install numpy scipy pandas matplotlib
# Web
EXPOSE 8088
# Web Https
EXPOSE 8090
# Scheduler
EXPOSE 8030
# Tracker
EXPOSE 8031
# Default
EXPOSE 8032
# Admin
EXPOSE 8033
ENTRYPOINT ["yarn", "resourcemanager"]