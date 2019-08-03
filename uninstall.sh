#!/bin/bash

SCRIPT_PATH=$(dirname $0)

exit-error() {
    echo $@
    echo "Please specify the path to the list of apps you want to remove. For example: $SCRIPT_PATH/apps/facebook"
    exit 1
}

LISTS_DIR="apps"
UNINSTALL_SCRIPT="scripts/remove-app.sh"

if [ -z $1 ]; then
    exit-error "No package list selected"
fi

ls "$@" &> /dev/null \
    || exit-error "No package list found for $@"

echo "Uninstalling..."
echo
_apps_to_remove=$(cat "$@" | grep "\S" | grep -v "#.*")
echo "$_apps_to_remove"

echo
read -p "Are you sure you want to uninstall these apps? [y/N]" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "$_apps_to_remove" | xargs -I{} ./$UNINSTALL_SCRIPT {}
fi
