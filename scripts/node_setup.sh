#!/bin/bash

./scripts/install.sh

./scripts/init_all.sh

./scripts/install_calico_pre.sh

pause

./scripts/join.sh
