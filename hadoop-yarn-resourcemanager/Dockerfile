FROM ntim/hadoop-base
# Install python3 and scientific libraries
RUN apt-get update && apt-get install -y python3 python3-pip python3-tk && rm -rf /var/lib/apt/lists/*
RUN pip3 install numpy scipy pandas matplotlib
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
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