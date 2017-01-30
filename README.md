# Direct install
Download scripts and config files into /etc/
```
wget -qO- https://raw.githubusercontent.com/BorX/dotfiles/master/directInit.sh | bash
```

# Cloning install
Clone repo and link scripts and config files from /etc/ to the clone
```
INSTALL_DIR='/data/dotfiles'
git clone https://github.com/BorX/dotfiles.git "$INSTALL_DIR"
Cloning into '/data/dotfiles'...
remote: Counting objects: 96, done.
remote: Compressing objects: 100% (10/10), done.
remote: Total 96 (delta 0), reused 0 (delta 0), pack-reused 86
Unpacking objects: 100% (96/96), done.
Checking connectivity... done.

$INSTALL_DIR/etc/profile.d/installIntoEtcProfileD

$INSTALL_DIR/etc/vim/installIntoEtcVim
‘vimrc.local’ -> ‘vimrc.local_20170130-1700’
‘./vimrc.local’ -> ‘/data/dotfiles/etc/vim/vimrc.local’

$INSTALL_DIR/home/installIntoHomeDirectory
‘.gitconfig’ -> ‘.gitconfig_20170130-1701’
‘./.gitconfig’ -> ‘/data/dotfiles/home/.gitconfig’
‘.bashrc’ -> ‘.bashrc_20170130-1701’
‘.bashrc’ -> ‘/etc/profile’

$INSTALL_DIR/permissions.sh

$INSTALL_DIR/uninstall.sh
```
