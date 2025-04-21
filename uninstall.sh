#!/bin/bash

set -e

PLIST_NAME="com.skw398.keymap.plist"
DEST_DIR="$HOME/Library/LaunchAgents"

launchctl unload "$DEST_DIR/$PLIST_NAME" 2>/dev/null || true
rm -f "$DEST_DIR/$PLIST_NAME"

hidutil property --set '{"UserKeyMapping":[]}'
