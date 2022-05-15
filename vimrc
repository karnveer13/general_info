" Turn syntax highlighting on
syntax on
" #set filetype indent on: Enable indentation rules that are file-type specific.
" #set shiftround: When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
" #set shiftwidth=4: When shifting, indent using four spaces.
" #set smarttab: Insert “tabstop” number of spaces when the “tab” key is pressed.
" #set tabstop=4: Indent using four spaces.

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" " Enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on
" " Enable plugins and load plugin for the detected file type.
filetype plugin on
" " Load an indent file for the detected file type.
filetype indent on
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Highlight cursor line underneath the cursor horizontally.
set cursorline
" " Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" ******************** STATUS LINE **************** {{{
"
" " Clear status line when vimrc is reloaded.
set statusline=
"
" " Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R
"
" " Use a divider to separate the left side from the right side.
set statusline+=%=
"
" " Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
"
" " Show the status on the second to last line.
set laststatus=2
"
" " }}}

set noerrorbells
set hlsearch
set incsearch
set noswapfile
set smartindent
set smartcase
set undodir=~/.vim/undodir
set undofile
set ruler
set confirm
set colorcolumn=80
set cmdheight=2

set nobackup
nnoremap <C-g> :NERDTree<CR>
" set colorcolumn=120

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"   all downloaded plugins will be stored inside plugged directory
call plug#begin('~/.vim/plugged')
" call plug#begin('~/.vim/pack/vendor/start')
" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'craigemery/vim-autotag'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
" Initialize plugin system
call plug#end()

colorscheme gruvbox
" highlight Normal guibg=none
