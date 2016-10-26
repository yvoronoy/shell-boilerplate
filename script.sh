#!/usr/bin/env bash
# Shell Boilerplate

set -o errexit
set -o pipefail
set -o nounset

VERSION=1.0.0
SCRIPT_NAME=$(basename "${0}");

################################################################################
# Help
################################################################################
helpAction()
{
  cat <<HEREDOC
Shell Boilerplate Script
Version: ${VERSION}

Usage:
  ${SCRIPT_NAME} [action name] [--options] [<arguments>]

HEREDOC
}

################################################################################
# Main
################################################################################
main()
{
  local _actionName=$1;
  if [[ ! "$_actionName" ]]
  then
    _actionName=help
  fi
  _actionName="${_actionName}Action"

  ${_actionName}
}
main "${@:-}"

