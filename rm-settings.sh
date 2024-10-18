#!/usr/bin/env sh

for config_path in \
"$HOME"/.config/Google/Android* \
"$HOME"/Library/Application\ Support/Google/Android* \
"$HOME"/AppData/Roaming/Google/Android* \

do
  echo "$config_path"
  if [ -d "$config_path" ]; then
    rm -rf "$config_path"
  fi
done
