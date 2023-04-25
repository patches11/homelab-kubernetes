#!/bin/bash

./scripts/install.sh

./scripts/init_all.sh

./scripts/install_calico_pre.sh

pause

./scripts/init_cluster.sh

pause

./scripts/user_config.sh

./scripts/install_calico.sh

./scripts/master_remove_taint.sh

./scripts/watch-nodes.sh
