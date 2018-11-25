#!/bin/bash

. $(dirname $(dirname ${BASH_SOURCE[0]}))/script-parameters.sh

echo -e "${LIGHT_GREEN}Import Config Split configuration files${NC}"
${DRUPAL} config:import:single --file="${PROJECT_PATH}/conf/drupal/default/sync/config_split.config_split.dev.yml"
${DRUPAL} config:import:single --file="${PROJECT_PATH}/conf/drupal/default/sync/config_split.config_split.staging.yml"
${DRUPAL} config:import:single --file="${PROJECT_PATH}/conf/drupal/default/sync/config_split.config_split.preprod.yml"
${DRUPAL} config:import:single --file="${PROJECT_PATH}/conf/drupal/default/sync/config_split.config_split.prod.yml"
${DRUPAL} config:import:single --file="${PROJECT_PATH}/conf/drupal/default/sync/config_split.config_split.global.yml"