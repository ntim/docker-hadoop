FROM ntim/hadoop-base:2.9.0
USER hdfs
# Web
EXPOSE 50075
# Web HTTPS
EXPOSE 50475
# Default
EXPOSE 50010
# IPC
EXPOSE 50020
# Start the datanode
ENTRYPOINT ["hdfs", "datanode"]
