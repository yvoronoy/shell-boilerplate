#!/usr/bin/env bash
# Shell Boilerplate

set -o errexit
set -o pipefail
set -o nounset

VERSION=1.0.0
SCRIPT_NAME=$(basename "${0}");
DEFAULT_ACTION=help

################################################################################
# Core Functions
################################################################################
route()
{
  local _actionName=$1
  printf "%sAction" "${_actionName}"
}

################################################################################
# Action Controllers
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
  local _actionName=${1:-$DEFAULT_ACTION};
  $(route ${_actionName})
}
main "${@:-}"

