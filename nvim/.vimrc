" Options "
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow
set showmatch
set hlsearch
set incsearch
set ignorecase
set encoding=utf-8
set nocompatible
set guifont=Inconsolata\ Nerd\ Font\ Complete\ Mono:h16
set nosmd
set relativenumber
set list
set lcs=eol:$,tab:->,trail:>
filetype plugin indent on
syntax enable

" Global variables "
let &t_SI.="\e[5 q" 
let &t_SR.="\e[3 q" 
let &t_EI.="\e[1 q"

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/.config/nvim/plugins.nvim
source ~/.config/nvim/airline.nvim
source ~/.config/nvim/powerline.nvim
source ~/.config/nvim/slime.nvim
source ~/.config/nvim/deocomplete.nvim
source ~/.config/nvim/jedi.nvim
source ~/.config/nvim/vimspector.nvim
