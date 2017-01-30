# Direct install
Download scripts and config files into /etc/
```
wget -qO- https://raw.githubusercontent.com/BorX/dotfiles/master/directInit.sh | bash
```
```
wget -qO- https://raw.githubusercontent.com/BorX/dotfiles/master/uninstall.sh | bash
```
# Cloning install
Clone repo and link scripts and config files from /etc/ to the clone
```
INSTALL_DIR='/data/dotfiles'
git clone https://github.com/BorX/dotfiles.git "$INSTALL_DIR"
```
```
$INSTALL_DIR/install.sh
```
or
```
$INSTALL_DIR/etc/profile.d/installIntoEtcProfileD
$INSTALL_DIR/etc/vim/installIntoEtcVim
$INSTALL_DIR/home/installIntoHomeDirectory
```
# Uninstall
```
$INSTALL_DIR/uninstall.sh
```
