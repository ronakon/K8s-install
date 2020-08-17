#!/usr/bin/env bash

apt-get update && apt-get upgrade -y
apt-get install apt-transport-https curl && pt-get update
apt-get install docker.io
systemctl start docker
systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt install kubeadm kubelet kubectl kubernetes-cni
swapoff -a
