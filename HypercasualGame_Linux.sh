#!/bin/sh
echo -ne '\033c\033]0;HypercasualGame\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/HypercasualGame_Linux.x86_64" "$@"
