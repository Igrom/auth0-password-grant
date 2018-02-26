#!/bin/sh
INSTALL_PATH="/usr/local/bin"
CONFIG_PATH="$HOME/.config/auth0-password-grant"

echo "Installing auth0-password-grant to $INSTALL_PATH..."
sudo cp auth0-password-grant "$INSTALL_PATH"
sudo chmod +x "$INSTALL_PATH/auth0-password-grant"

echo "Placing configuration file in  $CONFIG_PATH..."
mkdir -p "$CONFIG_PATH"
cp -i config "$CONFIG_PATH"
chmod u+x "$CONFIG_PATH/config"
"$EDITOR" "$CONFIG_PATH/config"

echo "Installing manpages..."
sudo cp -a doc/* /usr/local/man
