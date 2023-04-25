#!/bin/bash

sudo pacman -Syu

sudo pacman -S base-devel kubernetes-control-plane kubernetes-node kubeadm kubelet containerd kubectl cni-plugins

git clone https://aur.archlinux.org/etcd.git

cd etcd && makepkg -si
