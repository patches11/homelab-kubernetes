#!/bin/bash

cmd=$1

show_help () {
  echo ""
  echo "This script install kubernetes via kubeadm on arch."
  echo "Run the following command:"
  echo "./homelab-kubernetes.sh <master|join|uninstall>"
  echo ""
  echo "For join make sure to export TOKEN=??? && export HASH=??? && export HOST=??? from the result of your master script"
  echo ""
  echo "If no option is specified, then help is shown."
  echo ""
}

if [[ $# -eq 0 ]] ; then
  show_help
  exit 1
fi


if [ "$cmd" = "master" ]; then
    ./scripts/master_setup.sh
fi


if [ "$cmd" = "join" ]; then
    ./scripts/node_setup.sh
fi

if [ "$cmd" = "uninstall" ]; then
    ./scripts/uninstall.sh
fi