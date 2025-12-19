" enable new regexp engine to avoid freezes on mac
set re=2

" required by catppucin theme
set termguicolors

" Use theme following system theme
colorscheme one
let theme = system('defaults read -g AppleInterfaceStyle')
if theme =~ 'Dark'
    set background=dark
else
    set background=light
endif

" Make Vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Optimize for fast terminal connections
set ttyfast
" Default encoding
set encoding=utf-8

" Centralize swapfiles
set directory=~/.vim/swap

" Respect modeline in files
set modeline
set modelines=4
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
set list listchars=tab:··,extends:»,precedes:«
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Disable wrap by default
set nowrap
