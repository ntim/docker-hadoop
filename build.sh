#!/bin/bash
docker build hadoop-base -t ntim/hadoop-base:latest
docker build hadoop-hdfs-datanode -t ntim/hadoop-hdfs-datanode:latest
docker build hadoop-hdfs-namenode -t ntim/hadoop-hdfs-namenode:latest
docker build hadoop-yarn-resourcemanager -t ntim/hadoop-yarn-resourcemanager:latest
docker build hadoop-yarn-nodemanager -t ntim/hadoop-yarn-nodemanager:latest
docker build spark -t ntim/spark:latest
docker build zeppelin -t ntim/zeppelin:latest
