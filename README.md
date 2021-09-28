# HBase 2.4.6 Docker image 

## Make

* make build - build an image
* make push - push image to Docker Hub
* make all - build & publish

## Run

### Run master node 

```shell
docker run 
  -e HBASE_CONF_hbase_rootdir=hdfs://namenode:9000/hbase
  -e HBASE_CONF_hbase_cluster_distributed=true
  -e HBASE_CONF_hbase_zookeeper_quorum=zoo1
  -e HBASE_CONF_hbase_master=hbase-master:16000
  -e HBASE_CONF_hbase_master_hostname=hbase-master
  -e HBASE_CONF_hbase_master_port=16000
  -e HBASE_CONF_hbase_master_info_port=16010
  -e HBASE_CONF_hbase_regionserver_port=16020
  -e HBASE_CONF_hbase_regionserver_info_port=16030
  -e HBASE_MANAGES_ZK=false
  -e SERVICE_PRECONDITION="namenode:50070 datanode:50075 zoo1:2181"
  -e MODE="master"
  -p 16010:16010
  aggregion/hbase
```


### Run region node

```shell
docker run 
  -e HBASE_CONF_hbase_rootdir=hdfs://namenode:9000/hbase
  -e HBASE_CONF_hbase_cluster_distributed=true
  -e HBASE_CONF_hbase_zookeeper_quorum=zoo1
  -e HBASE_CONF_hbase_master=hbase-master:16000
  -e HBASE_CONF_hbase_master_hostname=hbase-master
  -e HBASE_CONF_hbase_master_port=16000
  -e HBASE_CONF_hbase_master_info_port=16010
  -e HBASE_CONF_hbase_regionserver_port=16020
  -e HBASE_CONF_hbase_regionserver_info_port=16030
  -e HBASE_MANAGES_ZK=false
  -e SERVICE_PRECONDITION="namenode:50070 datanode:50075 zoo1:2181"
  -e MODE="region"
  -p 16010:16010
  aggregion/hbase
```
