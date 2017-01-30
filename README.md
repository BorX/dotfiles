# Direct install
Download scripts and config files into /etc/
```
wget -qO- https://raw.githubusercontent.com/BorX/dotfiles/master/directInit.sh | bash
```

# Cloning install
Clone repo and link scripts and config files from /etc/ to the clone
```
# git clone https://github.com/BorX/dotfiles.git /data/dotfiles
Cloning into '/data/dotfiles'...
remote: Counting objects: 93, done.
remote: Compressing objects: 100% (7/7), done.
remote: Total 93 (delta 0), reused 0 (delta 0), pack-reused 86
Unpacking objects: 100% (93/93), done.
Checking connectivity... done.

# /data/dotfiles/etc/profile.d/installIntoEtcProfileD

# /data/dotfiles/etc/vim/installIntoEtcVim
‘./vimrc.local’ -> ‘/data/dotfiles/etc/vim/vimrc.local’

# /data/dotfiles/home/installIntoHomeDirectory
‘.gitconfig’ -> ‘.gitconfig_20170130-1650’
‘./.gitconfig’ -> ‘/data/dotfiles/home/.gitconfig’
‘.bashrc’ -> ‘.bashrc_20170130-1650’
‘.bashrc’ -> ‘/etc/profile’
```
