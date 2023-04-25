#!/bin/bash

sudo cp calico.conf /etc/NetworkManager/conf.d/

sudo systemctl restart NetworkManager
