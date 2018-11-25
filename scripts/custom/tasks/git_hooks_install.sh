#!/bin/bash

. $(dirname $(dirname ${BASH_SOURCE[0]}))/script-parameters.sh

 if [ ! -L .git/hooks ];
  then
      echo "${YELLOW}.git/hooks is not symlink${NC}"
      echo "${LIGHT_GREEN}copying .git/hooks to .git/old_hooks${NC}"
      mv $PROJECT_PATH/.git/hooks $PROJECT_PATH/.git/old_hooks

      echo "${GREEN}symlinking ../scripts/git-hooks .git/hooks${NC}"
      ln -s $PROJECT_PATH/config/git/hooks $PROJECT_PATH/.git/hooks
  fi