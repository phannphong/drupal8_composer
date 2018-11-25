#!/bin/bash

function abspath() {
    python -c "import sys, os;sys.stdout.write(os.path.abspath(\"$@\"))"
}

function relpath() {
    python -c "import sys, os;sys.stdout.write(os.path.relpath(\"$@\"))"
}

PROJECT_PATH=$(abspath $(dirname $(dirname $(dirname ${BASH_SOURCE[0]}))))
PROJECT_PATH_ABSOLUTE=$PROJECT_PATH
PROJECT_PATH_RELATIVE=$(relpath $(dirname $(dirname $(dirname ${BASH_SOURCE[0]}))))
CURRENT_PATH=$(pwd)
SCRIPTS_PATH=$PROJECT_PATH/scripts/custom
WEB_PATH=$PROJECT_PATH/web

GIT=/usr/bin/git
DRUSH=$PROJECT_PATH/vendor/bin/drush
DRUPAL=$PROJECT_PATH/vendor/bin/drupal

CURRENT_DATE=$(date "+%Y-%m-%d-%Hh%Mm%Ss")

DEFAULT_LANGUAGE="en"

WEBSERVER_USER='www-data'

# Colors.
NC='\033[0m' # No Color
BLACK='\033[0;30m'
DARK_GRAY='\033[1;30m'
RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
GREEN='\033[0;32m'
LIGHT_GREEN='\033[1;32m'
BROWN_ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHT_BLUE='\033[1;34m'
PURPLE='\033[0;35m'
LIGHT_PURPLE='\033[1;35m'
CYAN='\033[0;36m'
LIGHT_CYAN='\033[1;36m'
LIGHT_GRAY='\033[0;37m'
WHITE='\033[1;37m'