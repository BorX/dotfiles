#!/bin/bash

SCRIPT_PATH="$(cd "$(dirname "$0")" && pwd)"

"$SCRIPT_PATH/etc/profile.d/installIntoEtcProfileD"
"$SCRIPT_PATH/etc/vim/installIntoEtcVim"
"$SCRIPT_PATH/home/installIntoHomeDirectory"
