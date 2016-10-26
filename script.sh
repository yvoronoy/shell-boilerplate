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
printHelp()
{
  cat <<HEREDOC
Shell Boilerplate Script
Version: ${VERSION}

Usage:
  ${SCRIPT_NAME} [--options] [<arguments>]

HEREDOC
}

################################################################################
# Main
################################################################################
main()
{
  printHelp;
}
main "$@"

