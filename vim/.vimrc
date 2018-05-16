" PLUGIN
call plug#begin('~/.vim/plugged')

"" The NERD tree
Plug 'scrooloose/nerdtree'
"" CtrlP
Plug 'kien/ctrlp.vim'
"" Vim Colors solarized
Plug 'altercation/vim-colors-solarized'
"" Vim Airline
Plug 'bling/vim-airline'
"" Swift
Plug 'lvjian700/swift.vim', { 'for': 'swift' }
"" Cucumber
Plug 'tpope/vim-cucumber'
"" Ack
Plug 'mileszs/ack.vim'
"" Fswitch
Plug 'derekwyatt/vim-fswitch'
"" Easymotion
Plug 'easymotion/vim-easymotion'
"" Theme
Plug 'aereal/vim-colors-japanesque'

call plug#end()


" CONFIG
"" The NERD tree
autocmd vimenter * NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" Vim Colors solarized
syntax enable
set background=dark
colorscheme japanesque
let g:solarized_termcolors=256

"" User
set nu
set clipboard=unnamed
set gfn=Monaco:h14
set linespace=2

"" Hightlight current line and column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"" tab spaces
set tabstop=2
set expandtab
set shiftwidth=2
set backspace=2

" KEYMAP
"" The NERD tree
map <C-n> :NERDTreeToggle<CR>

"" move between different window 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"" shut down window
nmap <Leader>w :wq<Enter>
nmap <Leader>q :q!<Enter>
imap <Leader>w <Esc>:wq<Enter>
imap <Leader>q <Esc>:q!<Enter>

" kien/ctrlp.vim
"" Recent file
map <Leader>e :CtrlPBuffer<Enter>

"" h m etc files switch
"" Switch to the file and load it into the current window >
nmap <silent> <Leader>of :FSHere<cr>
"" Switch to the file and load it into the window on the right >
nmap <silent> <Leader>ol :FSRight<cr>
"" Switch to the file and load it into a new window split on the right >
nmap <silent> <Leader>oL :FSSplitRight<cr>
"" Switch to the file and load it into the window on the left >
nmap <silent> <Leader>oh :FSLeft<cr>
""Switch to the file and load it into a new window split on the left >
nmap <silent> <Leader>oH :FSSplitLeft<cr>
"" Switch to the file and load it into the window above >
nmap <silent> <Leader>ok :FSAbove<cr>
"" Switch to the file and load it into a new window split above >
nmap <silent> <Leader>oK :FSSplitAbove<cr>
"" Switch to the file and load it into the window below >
nmap <silent> <Leader>oj :FSBelow<cr>
"" Switch to the file and load it into a new window split below >
nmap <silent> <Leader>oJ :FSSplitBelow<cr>
