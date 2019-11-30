#!/bin/bash

JENKINS_HOME=/opt/jenkins_home
#install Jenkins

sudo yum install java-1.8.0
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm — import http://pkg.jenkins.io/redhat/jenkins.io
sudo yum install jenkins -y
sudo service jenkins start
chkconfig jenkins on


#install ansible
sudo yum update
sudo yum install python
sudo wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -ivh epel-release-latest-7.noarch.rpm
sudo yum repolist
sudo yum — enablerepo=epel install ansible
sudo yum install ansible