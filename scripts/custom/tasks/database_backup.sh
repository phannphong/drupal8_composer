#!/bin/bash

. $(dirname $(dirname ${BASH_SOURCE[0]}))/script-parameters.sh
. $(dirname $(dirname ${BASH_SOURCE[0]}))/script-parameters.local.sh

echo -e "${LIGHT_GREEN}Database backup.${NC}"
$DRUSH sql:dump --result-file="${PROJECT_PATH}/backups/${CURRENT_DATE}.sql" --gzip --structure-tables-key="common"