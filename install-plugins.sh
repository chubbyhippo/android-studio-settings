#!/usr/bin/env sh

# plugins
cmd=studio
if uname | grep -q "^MINGW"; then
  cmd="$HOME"/AppData/Local/JetBrains/Toolbox/scripts/studio.cmd
fi

$cmd installPlugins \
  IdeaVIM \
  com.github.camork.fileExpander \
  com.jetbrains.kmm \
  com.joshestein.ideavim-quickscope \
  com.julienphalip.ideavim.peekaboo \
  com.joshestein.ideavim-quickscope \
  eu.theblob42.idea.whichkey
