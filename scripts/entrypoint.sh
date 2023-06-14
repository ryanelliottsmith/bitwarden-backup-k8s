#! /bin/sh

mkdir -p "$HOME/.config/Bitwarden CLI"

ln -sf "/backups/Bitwarden CLI/data.json" "$HOME/.config/Bitwarden CLI/data.json"

/scripts/backup.exp