#!/usr/bin/env bash
set -euo pipefail
app_home=${HERDR_APP_HOME:-$HOME/.config/herdr-app}
here=$(cd -- "$(dirname -- "${BASH_SOURCE[0]:-$0}")" && pwd -P)
mkdir -p "$app_home/mods"
ln -sfn "$here/mods/herdr-app-picker" "$app_home/mods/herdr-app-picker"
printf 'Linked %s -> %s\n' "$app_home/mods/herdr-app-picker" "$here/mods/herdr-app-picker"
