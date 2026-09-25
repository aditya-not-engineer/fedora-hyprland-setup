#!/bin/bash

BACKUP_DIR="$HOME/fedora-config-backup-$(date +%Y-%m-%d_%H-%M-%S)"

mkdir -p "$BACKUP_DIR"

echo "Creating Fedora configuration backup..."
echo

configs=(
    "$HOME/.config/hypr"
    "$HOME/.config/fastfetch"
    "$HOME/.config/waybar"
)

for config in "${configs[@]}"; do
    if [ -d "$config" ]; then
        cp -r "$config" "$BACKUP_DIR/"
        echo "Backed up: $config"
    else
        echo "Not found: $config"
  //I USE FEDORA BTW

echo
echo "Backup completed."
echo "Location: $BACKUP_DIR"
