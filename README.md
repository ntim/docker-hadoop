# docker-hadoop
Dockerized Hadoop HDFS with Yarn, Spark and Zeppelin to use with [Docker swarm mode][Docker swarm mode].

The images provide [Hadoop][Hadoop] 2.9.0, [Spark][Spark] 2.2.1 and [Zeppelin][Zeppelin] 0.7.3.

## Usage

Please have a look into the provided `docker-compose.yml` 

### Configuration 

#### HDFS

The Hadoop home is located at `/usr/local/hadoop`. Thus, the configuration files are located at `/usr/local/hadoop/etc/hadoop`. The default filesystem name is configured to `hdfs://namenode`, therefore it is important to set the hostname of the container running the `hadoop-hdfs-namenode` image to `namenode` or change the property in the `core-site.xml`.

#### Spark

Located at `/usr/local/spark/conf`.

#### Zeppelin

Located at `/usr/local/zeppelin/conf`.

### Volumes

#### HDFS

To keep HDFS datastorage persistent, provide a volume for the container path `/var/hadoop`. 

#### Zeppelin

To have persistent notebooks, provide a volume for the container path `/usr/local/zeppelin/notebook`.

[Hadoop]: http://hadoop.apache.org/
[Spark]: http://spark.apache.org/
[Zeppelin]: http://zeppelin.apache.org/
[Docker swarm mode]: https://docs.docker.com/engine/swarm/
