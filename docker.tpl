#!/bin/bash

sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user




#tomact install

cd /opt/
wget http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.53/bin/apache-tomcat-7.0.53.tar.gz
tar -zxvf apache-tomcat-7.0.53.tar.gz
rm apache-tomcat-7.0.53.tar.gz
cd /opt/apache-tomcat-7.0.53/bin/
./startup.sh