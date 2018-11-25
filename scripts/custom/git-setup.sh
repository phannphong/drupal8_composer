#!/bin/bash

. $(dirname ${BASH_SOURCE[0]})/script-parameters.sh
. $(dirname ${BASH_SOURCE[0]})/script-parameters.local.sh

if [ "${ENVIRONMENT_MODE}" = "dev" ]; then
   . $SCRIPTS_PATH/tasks/git_config_install.sh
   . $SCRIPTS_PATH/tasks/git_hooks_install.sh
fi