#!/bin/bash
docker push ntim/hadoop-base:latest
docker push ntim/hadoop-hdfs-datanode:latest
docker push ntim/hadoop-hdfs-namenode:latest
docker push ntim/hadoop-yarn-resourcemanager:latest
docker push ntim/hadoop-yarn-nodemanager:latest
docker push ntim/spark:latest
docker push ntim/zeppelin:latest
