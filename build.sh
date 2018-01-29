#!/bin/bash
docker build hadoop-base -t ntim/hadoop-base:2.9.0
docker build hadoop-hdfs-datanode -t ntim/hadoop-hdfs-datanode:2.9.0
docker build hadoop-hdfs-namenode -t ntim/hadoop-hdfs-namenode:2.9.0
docker build hadoop-hdfs-backupnode -t ntim/hadoop-hdfs-backupnode:2.9.0
docker build hadoop-yarn-base -t ntim/hadoop-yarn-base:2.9.0
docker build hadoop-yarn-resourcemanager -t ntim/hadoop-yarn-resourcemanager:2.9.0
docker build hadoop-yarn-nodemanager -t ntim/hadoop-yarn-nodemanager:2.9.0
docker build spark -t ntim/spark:2.2.1
docker build zeppelin -t ntim/zeppelin:0.7.3
