#!/usr/bin/env sh

# configs
for config_path in \
	"$HOME"/.config/Google/Android* \
	"$HOME"/Library/Application\ Support/Google/Android* \
	"$HOME"/AppData/Roaming/Google/Android*; do
	echo "$config_path"
	if [ -d "$config_path" ]; then

		# install keymaps
		mkdir -p "$config_path/keymaps"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/keymaps/chubbyhippo.xml -o "$config_path/keymaps/chubbyhippo.xml"

		# install settings
		mkdir -p "$config_path/options"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/editor.xml -o "$config_path/options/editor.xml"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/projectView.xml -o "$config_path/options/projectView.xml"
		mkdir -p "$config_path/options/mac"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/mac/keymap.xml -o "$config_path/options/mac/keymap.xml"
		mkdir -p "$config_path/options/windows"
		curl -k https://raw.githubusercontent.com/chubbyhippo/intellij-settings/refs/heads/main/config/options/windows/keymap.xml -o "$config_path/options/windows/keymap.xml"

	fi
done

# install .ideavimrc
curl -k https://raw.githubusercontent.com/chubbyhippo/ideavimrc/refs/heads/main/.ideavimrc -o ~/.ideavimrc

# install plugins
curl -k https://raw.githubusercontent.com/chubbyhippo/android-studio-settings/refs/heads/main/install-plugins.sh | /usr/bin/env sh
