set nocompatible
set autoindent
set sw=4
set tabstop=4
set backspace=2
set smarttab

" Close window or tab
map <BACKSPACE> :close<ENTER>

" More efficient tab navigation
nmap <C-T> :tabnew<ENTER>
nmap <C-H> :tabprev<ENTER>
nmap <C-L> :tabnext<ENTER>

colorscheme zenburn
syntax on

highlight ExtraWhitespace ctermbg=red guibg=red

" Show trailing whitespace and spaces before a tab:
" Source: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
match ExtraWhitespace /\s\+$\| \+\ze\t/
