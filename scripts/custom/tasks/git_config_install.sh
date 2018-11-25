#!/bin/bash

. $(dirname $(dirname ${BASH_SOURCE[0]}))/script-parameters.sh

git config commit.template $PROJECT_PATH_RELATIVE/config/git/commit-template.txt