#!/bin/bash

ROOT_DIR="$(dirname "$0")"

chmod a+x  "$ROOT_DIR"
chmod a+x  "$ROOT_DIR"/etc/
chmod a+rx "$ROOT_DIR"/etc/profile.d
chmod a+r  "$ROOT_DIR"/etc/profile.d/01_history.sh
chmod a+r  "$ROOT_DIR"/etc/profile.d/02_term.sh
chmod a+r  "$ROOT_DIR"/etc/profile.d/11_shellAlias.sh
chmod a+r  "$ROOT_DIR"/etc/profile.d/12_functions.sh
chmod a+r  "$ROOT_DIR"/etc/profile.d/21_editors.sh
chmod a+r  "$ROOT_DIR"/etc/profile.d/31_color.sh
chmod a+rx "$ROOT_DIR"/etc/vim
chmod a+r  "$ROOT_DIR"/etc/vim/vimrc.local
chmod a+rx "$ROOT_DIR"/home/
chmod a+rx "$ROOT_DIR"/home/installIntoHomeDirectory
chmod a+r  "$ROOT_DIR"/home/.gitconfig

