#!/bin/sh

# change yum repo to 163
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo

yum clean all

yum makecache

yum install vim -y

# install java 11
yum install -y java-11-openjdk

curl -O https://archive.apache.org/dist/kafka/3.1.1/kafka_2.12-3.1.1.tgz

tar -xzf kafka_2.12-3.1.1.tgz


#vim kafka_2.12-3.1.1/config/server.properties
#
#listeners=PLAINTEXT://:8002
#advertised.listeners=PLAINTEXT://
#zookeeper.connect=106.75.171.152:2181
#
#./kafka-server-start.sh -daemon ../config/server.properties


echo '-------------------------------------------------------------'
echo '*************************************************************'
echo 'add conf'
echo '*************************************************************'
echo 'vim kafka_2.12-3.1.1/config/server.properties'
echo 'listeners=PLAINTEXT://:8002'
echo 'advertised.listeners=PLAINTEXT://'
echo 'zookeeper.connect=106.75.171.152:2181'
echo '*************************************************************'
echo 'start command'
echo '*************************************************************'
echo './kafka-server-start.sh -daemon ../config/server.properties'
echo '*************************************************************'
echo '-------------------------------------------------------------'
