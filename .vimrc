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
"Copy paste to/from clipboard
vnoremap <C-c> "+y
map <silent><Leader>p :set paste<CR>o<esc>"+]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"+]p:set nopaste<cr>"


"Map Ctrl + S to save in any mode
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
" Also map leader + s
map <leader>s <C-S>

" Quickly close windows
nnoremap <leader>x :x<cr>
nnoremap <leader>X :q!<cr>






"PLUGINS PART 


"Airline theme
let g:airline_theme='term'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'edkolev/tmuxline.vim'

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
