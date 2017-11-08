#!/bin/ash

set -e

# Set the defaults
DEFAULT_RES="1280x1024x24"
DEFAULT_DISPLAY_X="99"
DEFAULT_DISPLAY=":$DEFAULT_DISPLAY_X"
RES=${RES:-$DEFAULT_RES}
DISPLAY=${DISPLAY:-$DEFAULT_DISPLAY}

# Start Xvfb
echo -e "Starting Xvfb on display ${DISPLAY} with res ${RES}"

# Fix gitlab-ci, was used same this docker container service in same time in another jobs.
[[ -f /.dockerenv ]] && \
([[ -f /tmp/.X99-lock ]] && echo -e "\n===================================\nAleady exist '/tmp/.X${DEFAULT_DISPLAY_X}-lock' file.\n===================================") || \
Xvfb ${DISPLAY} -ac -screen 0 ${RES} -nolisten tcp &
export DISPLAY=${DISPLAY}

exec "$@"
