#!/bin/bash

set -e

PLIST_NAME="com.skw398.keymap.plist"
DEST_DIR="$HOME/Library/LaunchAgents"

mkdir -p "$DEST_DIR"
cp "$PLIST_NAME" "$DEST_DIR/"

launchctl unload "$DEST_DIR/$PLIST_NAME" 2>/dev/null || true
launchctl load "$DEST_DIR/$PLIST_NAME"
