syntax enable
filetype plugin indent on
set nocompatible

"Автоматическая установка vim-plug"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
if filereadable(expand("~/.vim/plug_vimrc"))

    source ~/.vim/plug_vimrc
endif

" config
if filereadable(expand("~/.vim/set_vimrc"))

      source ~/.vim/set_vimrc
endif

" other
if filereadable(expand("~/.vim/feature_vimrc"))

      source ~/.vim/feature_vimrc
endif

"vim-python-jedi для поддержки вимом питон
"git curl?
"-----------------
"YCM apt install build-essential cmake vim python3-dev shellcheck
"python3 ./.vim/bundle/YouCompleteMe/install.py --all

"vim82 apt install ncurses-dev build-essential mercurial
" git clone https://github.com/vim/vim.git
" cd vim/src
" make distclean
" ./configure --with-features=huge \
"            --disable-darwin \
"            --disable-selinux \
"            --enable-luainterp \
"            --enable-perlinterp \
"            --enable-pythoninterp \
"            --enable-python3interp \
"            --enable-tclinterp \
"            --enable-rubyinterp \
"            --enable-cscope \
"            --enable-multibyte \
"            --enable-xim \
"            --enable-fontset \
"            --enable-gui=gnome2
" or this
" ./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp
" make
" make install
" export PATH=/usr/local/bin:$PATH

"apt install python3-pip

"Neomake/shellcheck
"apt install shellcheck
"
"
