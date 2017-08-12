filetype off
filetype plugin indent on

set nocompatible
set autoread
set ignorecase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldcolumn=1
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set number

syntax enable

" \\--------- Vundle Plugin Configurations ------------ 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Start list of plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
" End list of plugins
call vundle#end()
" //--------------------------------------------------- 

