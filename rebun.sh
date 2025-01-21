#!/bin/bash

DELAY_SECONDS="$1"
SCRIPT_NAME="$2"

if [ -z "$DELAY_SECONDS" ] || [ -z "$SCRIPT_NAME" ]; then
    echo "Usage: $0 <delay-seconds> <script-name>"
    echo "Example: $0 30 \"scriptthatmightcrash.ts\""
    exit 1
fi

while true; do
    bun run "$SCRIPT_NAME"
    EXIT_STATUS=$?

    if [ $EXIT_STATUS -ne 0 ]; then
        echo "Script crashed. Waiting $DELAY_SECONDS seconds before restarting..."
        sleep "$DELAY_SECONDS"
    else
        echo "Script finished normally. Exiting..."
        break
    fi
done
