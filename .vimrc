" File: .vimrc
" Author: Jarielle Catbagan
" Date: 21, September 2015
"
" Description: Configuration for Vim.

" Configure Vundle for managing plugins
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" Enable syntax highlighting
syntax on

" Enable 256 colors in Vim
set t_Co=256

" Set the color theme for syntax highlighting
colorscheme slate

" The number of spaces to use for tabs
set shiftwidth=4
" The number of spaces to place/delete with each <Tab>/<Backspace> pressed
" respectively
set softtabstop=4

" Detect the type of file being edited to employ proper indentation
" mechanisms
filetype plugin indent on

" Place a visual line where the cursor is a
set cursorline

" 'always/2' display status line
set laststatus=2

" Display current line number and relative line numbers as well
set number
set relativenumber

" Show commands in the making
set showcmd

" Disable display of mode since it is redundant as a result of vim-airline
set noshowmode

" Allow modified buffers to be hidden, especially when attempting to open a
" new buffer
set hidden

" Enable the use of mouse clicks
set mouse=a

" Set the text width to 80 columns to automatically wrap lines to maintain 
" visible compatibility
set textwidth=80

" Integrate powerline fonts
let g:airline_powerline_fonts = 1 " Set vim-airline theme
let g:airline_theme='dark'

" Enable smart-tab extensions from vim-airline
let g:airline#extensions#tabline#enabled = 1

let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeDirArrows = 1

" Leader mappings
let mapleader = ';'
noremap <leader>bb :buffer 
noremap <leader>bdd :bdelete<CR>
noremap <leader>bd1 :bdelete!<CR>
noremap <leader>bn :bnext<CR>
noremap <leader>bp :bprevious<CR>
noremap <leader>ccd :set cursorcolumn&<CR>
noremap <leader>cce :set cursorcolumn<CR>
noremap <leader>e :edit 
noremap <leader>h :help 
noremap <leader>o :open 
noremap <leader>qc :close<CR>
noremap <leader>qq :quit<CR>
noremap <leader>q1 :quit!<CR>
noremap <leader>sce :setlocal spell spelllang=en_us<CR>
noremap <leader>scd :setlocal nospell<CR>
noremap <leader>sci zG
noremap <leader>sh :vsplit<CR>
noremap <leader>sv :split<CR>
noremap <leader>ww :w<CR>
noremap <leader>wq :wq<CR>
noremap <leader>wh <C-W>h
noremap <leader>wj <C-W>j
noremap <leader>wk <C-W>k
noremap <leader>wl <C-W>l
noremap <leader>wo :only<CR>
nnoremap <F5> "=strftime("%Y-%m-%d %T")<CR>P
inoremap <F5> <C-R>=strftime("%Y-%m-%d %T")<CR>

" Bind <F2> to execute :Explore both in Normal/Visual and Insert/Command-line
" mode
map <F2> :NERDTree<CR>
map! <F2> <Esc>:NERDTree<CR>

" Remap the tag navigation command sequences
map <F3> <Esc><C-T>
map! <F3> <Esc><C-T>
map <F4> <Esc><C-]>
map! <F4> <Esc><C-]>

autocmd FileType c setlocal colorcolumn=80
autocmd FileType python setlocal colorcolumn=80
autocmd FileType cpp setlocal colorcolumn=80
autocmd FileType asm setlocal colorcolumn=80

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
