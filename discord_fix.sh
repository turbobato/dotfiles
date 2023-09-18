#!/usr/bin/env bash

# This fixes an issue with Discord where being in a call for a long time causes the client to become unresponsive.
# For more information see https://gist.github.com/Shika-B/fc15c63d66716347df8627c0d42959b5

# Required dependencies: coreutils, gnused, and the 'asar' package from NPM. 

set -euo pipefail

path="$(find "$HOME/.config/discord" -name discord_desktop_core -type d | tail -n1)"
if [ -d "$path/core-patched" ]; then
    echo "already patched, doing nothing"
    exit
fi

tmpdir=$(mktemp -dt asar-XXXXXXXXXX)
trap 'rm -rf "$tmpdir"' EXIT

echo "patching $path/core.asar"
npx asar extract "$path/core.asar" "$tmpdir"
sed -i '/^function setTrayIcon.*/a return;' "$tmpdir/app/systemTray.js"

echo "copying patched module to $path/core-patched"
cp -r "$tmpdir" "$path/core-patched"

echo "replacing reference to core.asar with the patched module"
sed -i.bak "s/require('.\/core\.asar')/require('.\/core-patched')/g" "$path/index.js"
echo "wrote a backup of index.js to $path/index.js.bak"

echo "patching was successful. you can now restart discord"