#!/usr/bin/env sh

# plugins
cmd=studio
if uname | grep -q "^MINGW"; then
  if command -v studio.cmd >/dev/null 2>&1; then
    cmd=studio.cmd
  elif command -v webstorm64 >/dev/null 2>&1; then
    cmd=studio.64
  else
    echo "Warning: neither studio.cmd nor webstorm64 found, falling back to studio"
  fi
fi

$cmd installPlugins \
  IdeaVIM \
  com.github.camork.fileExpander \
  com.jetbrains.kmm \
  com.joshestein.ideavim-quickscope \
  com.julienphalip.ideavim.peekaboo \
  eu.theblob42.idea.whichkey \
  io.flutter
