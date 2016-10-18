map <C-n> :NERDTreeToggle<CR>
set number                    " always show line numbers


set nocompatible              " be iMproved, required
"filetype off                  " required
syntax on
filetype indent on              " Enable filetype-specific indenting
filetype plugin on              " Enable filetype-specific plugins
set nomodeline

let mapleader = ","

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
