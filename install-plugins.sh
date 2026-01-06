#!/usr/bin/env sh

# plugins
cmd=studio
if uname | grep -q "^MINGW"; then
  if command -v studio.cmd >/dev/null 2>&1; then
    cmd=studio.cmd
  elif command -v studio64 >/dev/null 2>&1; then
    cmd=studio.64
  else
    echo "Warning: neither studio.cmd nor studio64 found, falling back to studio"
  fi
fi

$cmd installPlugins \
  IdeaVIM \
  StringToolsPlugin \
  com.fwdekker.randomness \
  com.github.camork.fileExpander \
  com.jetbrains.kmm \
  com.joshestein.ideavim-quickscope \
  com.julienphalip.ideavim.peekaboo \
  com.joshestein.ideavim-quickscope \
  eu.theblob42.idea.whichkey \
  indent-rainbow.indent-rainbow \
  io.flutter \
  izhangzhihao.rainbow.brackets.lite \
  org.asciidoctor.intellij.asciidoc
