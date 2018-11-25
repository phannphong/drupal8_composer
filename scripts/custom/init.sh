#!/bin/bash

. $(dirname ${BASH_SOURCE[0]})/script-parameters.sh

echo -e "${LIGHT_GREEN}Copy example files.${NC}"
rsync -avz --ignore-existing $SCRIPTS_PATH/example.script-parameters.local.sh   $SCRIPTS_PATH/script-parameters.local.sh
rsync -avz --ignore-existing $WEB_PATH/sites/default/default.settings.php $WEB_PATH/sites/default/settings.php

echo -e "${LIGHT_GREEN}Create public files directory.${NC}"
mkdir -p $WEB_PATH/sites/default/files

echo -e "${LIGHT_GREEN}Ensure the following directories are present. Otherwise automated tests fail.${NC}"
mkdir -p $WEB_PATH/modules
mkdir -p $WEB_PATH/profiles
mkdir -p $WEB_PATH/themes

if [ "${ENVIRONMENT_MODE}" = "dev" ]; then
echo -e "${LIGHT_GREEN}Permissions are for dev environments. It should be less permissive.${NC}"
chmod 777 $WEB_PATH/sites/default/files
fi
