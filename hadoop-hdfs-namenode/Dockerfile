FROM ntim/hadoop-base:2.9.0
USER hdfs
# Format the namenode
RUN hdfs namenode -format
# Web
EXPOSE 50070
# Web HTTPS
EXPOSE 50470
# Default
EXPOSE 8020
# Start the namenode
ENTRYPOINT ["hdfs", "namenode"]
