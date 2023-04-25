# homelab-kubernetes

Kubeadm install of kubernetes on a basic Arch install

## Notes

* This might not work on your arch install, since it likely varies.
* Swap needs to be off
* Arch pacstrap, for reference
  * `pacstrap /mnt base linux linux-firmware vim iwd sudo networkmanager intel-ucode`

## Install using the main script homelab-kubernetes.sh

`./homelab-kubernetes <master|join|uninstall>`

## Config

### Kubernetes subnet

Default: 10.10.0.0/16

Calico config: ./calico/custom-resources.yaml

containerd-net: ./containerd/10-containerd-net.conflist

Init Script: ./scripts/init_cluster.sh

## Additional Components yamls

Some may have config specified via env variables like this $VARIABLE, they can be subsitituted via `envsubst` or simialar

### cert-manager/

SSL Certificate manager

### docker-registry/

Basic docker registry deployment

### dynamic-dns/

Namecheap dynamic-dns deployment

### flannel/

Basic flannel config, not used since I'm using calico

### nginx/

NGINX ingress controller

### storage/

Storage setup, pv, and storage class

## Known Issues

* Nodeport ingress seems to stall when hoping from one node to the next, this causes issues with, for example, a deployed docker registry if the host you are connecting to differs from the one the registry is runnning on
  * Maybe an issue with calico?