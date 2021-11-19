
cd /home/xsharawi/Desktop/practice
let mapleader = " "
set eb
set autowrite
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set t_Co=256
set guifont=DejaVu\ Sans\ Mono\ 12
set tabstop=4
set shiftwidth=4
set incsearch
set nowrap

set hidden
set number
set relativenumber
set numberwidth=5
set linespace=5

set directory^=$HOME/.vim/tmp//
syntax enable
syntax on
nohlsearch
colorscheme torte

set splitright
set splitbelow

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" oops commands
command W w

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Multiple Plug commands can be written in a single line using | separators

" snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" colorshemes
Plug 'altercation/vim-colors-solarized'
Plug 'octol/vim-cpp-enhanced-highlight'
"tabs
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
Plug 'jremmen/vim-ripgrep'
Plug 'vifm/vifm.vim'
" Initialize plugin system
call plug#end()

map <C-H> <Plug>(wintabs_previous)
map <C-L> <Plug>(wintabs_next)
map <C-T>c <Plug>(wintabs_close)
map <C-T>u <Plug>(wintabs_undo)
map <C-T>o <Plug>(wintabs_only)
map <C-W>c <Plug>(wintabs_close_window)
map <C-W>o <Plug>(wintabs_only_window)

command! Tabc WintabsCloseVimtab
command! Tabo WintabsOnlyVimtab

map <Leader>q <Plug>(wintabs_close)
map <Leader>w :w<CR> <Plug>(wintabs_close)
map <Leader>l <Plug>(wintabs_next)
map <Leader>h <Plug>(wintabs_previous)
map <Leader>s :nohlsearch<CR>

