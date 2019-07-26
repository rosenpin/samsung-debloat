#!/bin/bash

exit-error() {
    echo $1
    exit 1
}

LISTS_DIR="apps"
UNINSTALL_SCRIPT="scripts/remove-app.sh"

if [ -z $1 ]; then
    exit-error "No package list selected"
fi

ls "$LISTS_DIR/$1" &> /dev/null \
    || exit-error "No package list found for $1"

echo "Uninstalling..."
cat "$LISTS_DIR/$1" | grep "\S" | grep -v "#.*" | xargs -I{} ./$UNINSTALL_SCRIPT {}
