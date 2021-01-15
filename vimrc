" Vim5 and later versions support syntax highlighting. Uncommenting the next 
" line enables syntax highlighting by default. 
if has("syntax") 
  syntax on 
endif 
 
" If using a dark background within the editing area and syntax highlighting 
" turn on this option as well 
 
" Uncomment the following to have Vim jump to the last position when 
" reopening a file 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
 
" Uncomment the following to have Vim load indentation rules and plugins 
" according to the detected filetype. 
"filetype plugin indent on 
 
" The following are commented out as they cause vim to behave a lot 
" differently from regular Vi. They are highly recommended though. 
"set showcmd            " Show (partial) command in status line. 
set showmatch           " Show matching brackets. 
set ignorecase          " Do case insensitive matching 
"set smartcase          " Do smart case matching 
"set incsearch          " Incremental search 
"set autowrite          " Automatically save before commands like :next and :make 
set hidden              " Hide buffers when they are abandoned 
"set mouse=a            " Enable mouse usage (all modes) 
 
" Source a global configuration file if available 
if filereadable("/etc/vim/vimrc.local") 
  source /etc/vim/vimrc.local 
endif 
:set cursorline 
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1 
let mapleader = "."
:colorscheme molokai 
let $undodir = "~/.vim/undodir/"
set undofile 
filetype plugin on 
set updatetime=100
set autoindent
