#!/bin/bash

# Calico
sudo kubeadm init --kubernetes-version=stable --pod-network-cidr='10.10.0.0/16' --cri-socket="unix:///var/run/containerd/containerd.sock"
