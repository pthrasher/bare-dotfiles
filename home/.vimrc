" This is a bare vimrc with only the necessities in it for when I'm remote on
" another machine.

set nocompatible
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set smarttab
set showmode
set showcmd
set hidden
set visualbell
set ttyfast
set number
set laststatus=2
set history=1000
set nobackup
set nowb
set noswapfile
set backupskip=/tmp/*,/private/tmp/*"

if version > 720
    set relativenumber
    set undofile
    set undodir=~/.vimundo//
    set undoreload=10000
endif

set list
set listchars=tab:▸\ ,eol:¬

set showmatch
set matchtime=3

" Split precedence, we prefer vsplits.
set splitbelow
set splitright

set shiftround
set title
set ruler

set autowrite
set autoread

" cpoptions :help cpoptions
set formatoptions+=qorn1

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set scrolloff=8
set sidescroll=1
set sidescrolloff=10

set virtualedit+=block
set wildmenu
set wildmode=list:longest

set bg=dark
colorscheme wombat256

" Resize splits when the window is resized
au VimResized * :wincmd =


" Mappings --------------------------------------------------------------------

let mapleader = ","

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

" Fast buffer nav.
nnoremap <leader><leader> <c-^>

" Made D behave
nnoremap D d$

" Keep search matches in the middle of the window and pulse the line when moving
" to them.
nnoremap n nzzzv
nnoremap N Nzzzv

" Don't move on *
nnoremap * *<c-o>

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz

" Window resizing
nnoremap <C-left> 5<c-w>>
nnoremap <C-right> 5<c-w><

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L g_
" Visual line nav, not real line nav
noremap j gj
noremap k gk

" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
nnoremap <leader>v <C-w>v<C-w>l

nnoremap <leader>s :%s//<left>

" Emacs bindings in command line mode
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Less chording
nnoremap ; :
vnoremap ; :
inoremap jf <esc>

" Marks and Quotes
noremap ' `

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Yank from here till end of line.
nnoremap Y y$

" Better Completion
set completeopt=longest,menuone,preview

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<cr>
