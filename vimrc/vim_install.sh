#!/user/bin/env bash

#apt remove -y vim
#apt build-dep vim
apt install -y \
    ncurses-dev build-essential mercurial python3-dev shellcheck cmake golang-any git curl wget
    
cd /tmp
wget  https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz  
sudo apt update
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev
tar -xf Python-3.7*.tar.xz
cd Python-3.7.4
./configure --enable-loadable-sqlite-extensions # Avoid an error in sqlite
./configure --enable-optimizations
make
sudo make altinstall
sudo python3.7 -m pip install --upgrade pip
sudo python3.7 -m pip install --upgrade setuptools 

mkdir -p /tmp/vim-compile && cd "$_" || exit
git clone https://github.com/vim/vim.git
cd ./vim/src || exit
make distclean
./configure --with-features=huge \
            --disable-darwin \
            --disable-selinux \
            --enable-luainterp \
            --enable-perlinterp \
            --enable-pythoninterp \
            --enable-python3interp \
            --enable-tclinterp \
            --enable-rubyinterp \
            --enable-cscope \
            --enable-multibyte \
            --enable-xim \
            --enable-fontset \
            --enable-gui=gnome2
make
sudo make install

cd ~/ || exit
git clone https://github.com/yupirex/vimrc.git
ln -s ~/vimrc/.vim* ~/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim "+PlugInstall" "+qa!"

python3 ./.vim/bundle/YouCompleteMe/install.py --all
#test

