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

" Plugin list "
call plug#begin('~/.vim/bundle') 
Plug 'vim-airline/vim-airline'
Plug 'jpalardy/vim-slime'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'puremourning/vimspector'
call plug#end()

" Plugin specific variables "

" Airline "
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:airline#extensions#xkblayout#enabled = 0

" Powerline "
let g:Powerline_symbols='unicode'

" Slime "
let g:slime_target = "vimterminal"

" Deocomplete "
let g:deoplete#enable_at_startup = 1

" Need to install python3 -m pip install --user --upgrade jedi "
" Jedi "
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"

" Need to install python3 -m pip install --user --upgrade pynvim "
" Vimspector "
let g:vimspector_enable_mappings = "HUMAN"
nnoremap <leader>o :call vimspector#StepOver()<CR>
nnoremap <leader>i :call vimspector#StepInto()<CR>
nnoremap <leader>b :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>l :call vimspector#Launch()<CR>
nnoremap <leader>e :call vimspector#Reset()<CR>
