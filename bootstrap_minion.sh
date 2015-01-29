#!/bin/bash

echo "Minion Bootstrap -- Yum updating to current version"
yum -y update

echo "Minion Bootstrap -- Installing Kubernetes"
yum -y install kubernetes

echo "Minion Bootstrap -- Installing, Enabling and Starting Docker"
yum -y install docker-io
systemctl enable docker
systemctl start docker

echo "Minion Bootstrap -- Stopping and Disabling firewalld"
systemctl disable firewalld; systemctl stop firewalld
