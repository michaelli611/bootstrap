set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'http://github.com/sjl/gundo.vim.git'
Plugin 'mileszs/ack.vim'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'itchyny/lightline.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'posva/vim-vue'
Plugin 'yggdroot/indentline'

call vundle#end()            " required
filetype plugin indent on    " required

" pre loading
packadd! onedark.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
set shellpipe=>

" syntax coloring
colorscheme onedark
syntax on

" spaces and tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" ui
set number
set cursorline
set ruler

set wildmenu
set wildmode=longest:full,full
set lazyredraw
set showmatch

set incsearch
set hlsearch

set laststatus=2

set clipboard=unnamed

let g:lightline = {
  \ 'colorscheme' : 'wombat',
  \ }

" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za

set foldmethod=indent

" shortcuts
let mapleader=","
nnoremap <leader>f :nohlsearch<CR>
nnoremap <leader>u :GundoToggle<CR>
noremap <leader>s :mksession!<CR>
nnoremap <leader>r :%s
nnoremap <leader>g :Ack<space>
nnoremap <leader>p :CtrlP<space>
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
map <F8> :NERDTreeToggle<CR>

" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" for vim-glsl *.vs and *.fs
autocmd! BufNewFile,BufRead *.vs,*.fs,*.gs set ft=glsl
autocmd! BufNewFile,BufRead *.vue set ft=vue

function! SetupPython()
    " Here, you can have the final say on what is set.  So
    " fixup any settings you don't like.
    setlocal softtabstop=4
    setlocal tabstop=4
    setlocal shiftwidth=4
endfunction
command! -bar SetupPython call SetupPython()

set backspace=indent,eol,start

" Different bracket colors
let g:rainbow_active = 1
