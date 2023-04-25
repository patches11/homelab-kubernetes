#!/bin/bash

sudo kubeadm join $HOST --token $TOKEN \
        --discovery-token-ca-cert-hash sha256:$HASH
