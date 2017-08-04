set nocompatible
set autoindent
set sw=4
set tabstop=4
set backspace=2
set expandtab
set smarttab

set nu
set ruler

" Close window or tab
map <BACKSPACE> :close<ENTER>

" More efficient tab navigation
nmap <C-T> :tabnew<ENTER>
nmap <C-H> :tabprev<ENTER>
nmap <C-L> :tabnext<ENTER>

let g:zenburn_high_Contrast = 1

colorscheme zenburn
syntax on
filetype plugin on
filetype indent on

highlight ExtraWhitespace ctermbg=red guibg=red

" Show trailing whitespace and spaces before a tab:
" Source: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Enable ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
:helptags ~/.vim/bundle/ctrlp.vim/doc
