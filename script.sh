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

# Dispatch action
dispatch()
{
  local _actionName=$1
  printf "%sAction" "${_actionName}"
}

# Process Options
processOptions()
{
  while [[ $# -gt 0 ]]
  do
    key="$1"
    case $key in
      --debug)
        set -o xtrace;
      ;;
    *)
      echo "Invalid argument $key";
      exit 1;
    ;;
    esac
  shift
  done
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
  shift;
  processOptions "$@"

  $(dispatch ${_actionName})
}
main "${@:-}"

