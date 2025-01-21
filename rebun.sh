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
    echo "Script crashed or finished. Waiting $DELAY_SECONDS seconds before restarting..."
    sleep "$DELAY_SECONDS"
done

