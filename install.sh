#!/bin/bash
SCRIPT_NAME=`basename "$0"`
SCRIPT_PATH=${0%`basename "$0"`}
OLD_PATH="/home/${USER}/.local/share/rhythmbox/plugins/wikipedia/"
PLUGIN_PATH="/home/${USER}/.local/share/rhythmbox/plugins/Wikipedia/"

rm -rf $OLD_PATH
rm -rf $PLUGIN_PATH

mkdir -p $PLUGIN_PATH
cp -r "${SCRIPT_PATH}"* "$PLUGIN_PATH"
rm "${PLUGIN_PATH}${SCRIPT_NAME}"

