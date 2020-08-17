#!/usr/bin/env bash

apt-get update && apt-get upgrade -y
apt install apt-transport-https -y curl && pt-get update
apt-get install docker.io -y
systemctl start docker
systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt install kubeadm kubelet kubectl kubernetes-cni
swapoff -a
