FROM ntim/hadoop-base
# Format the namenode
RUN hdfs namenode -format
# Web
EXPOSE 50070
# Default
EXPOSE 8020
# Start the namenode
ENTRYPOINT ["hdfs", "namenode"]