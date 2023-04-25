#!/bin/bash

sudo cp 50-flannel.link /etc/systemd/network/

sudo systemctl restart systemd-networkd

kubectl apply -f kube-flannel.yml
