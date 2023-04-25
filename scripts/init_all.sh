#!/bin/bash

./ipv4.sh

sudo mkdir -p /etc/containerd

sudo cp containerd/config.toml /etc/containerd/
sudo cp containerd/10-containerd-net.conflist /etc/cni/net.d/

sudo systemctl start systemd-resolved
sudo systemctl enable systemd-resolved

sudo systemctl start containerd
sudo systemctl enable containerd

sudo systemctl start kubelet
sudo systemctl enable kubelet

