" General configuration
set nocompatible        " Disable vi compatibility "
set number              " Show line numbers "
set numberwidth=5       " Line numbers on 5 columns "
set backspace=indent    " Allow backspace over indentation "
set backspace+=eol      " end of lines "
set backspace+=start    " and line begin "
set wildmenu            " Menubar "
set showmatch           " Show matching braces "
set matchpairs+=<:>     " <> match too "
set mouse=a             " Enable mouse "
set showmode            " Show current vim mode "
set showcmd             " Show commands "
set nobackup            " No backup (~) files "
set noswapfile          " No swap (.swp) files "
set history=100         " Command line history size "
set cursorline          " Highlight cursor line "
set scrolloff=5         " 5 line buffer when scrolling "
" Search
set hlsearch
set incsearch           " Incremental search "
"set nohlsearch          " Search doesn't highlight "
set smartcase           " Ignore case when searching lowercase "
 
" Indentation
set autoindent          " Keep indentation for new lines "
set expandtab           "  tab character is replaced by spaces "
set tabstop=4           "  tab character width "
set smarttab            " Enables shiftwidth "
set shiftwidth=4        "  character width if it's the first of the line "

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

filetype plugin indent on

" Folding
"set foldenable          " Enable folding "
"set foldmethod=syntax   " Folds code blocks "

" Space pour désactiver le highlight de la dernière recherche
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Syntax hightlighting
if has("syntax")
  syntax on
endif
 
" Color theme (based on : http://blog.infinitered.com/entries/show/8)
colorscheme desert
 
" Highlight spaces at the end of lines
highlight WhitespaceEOL ctermbg=red guibg=red
let m = matchadd("WhitespaceEOL", "\\s\\+$", 2)
autocmd BufEnter * match WhitespaceEOL /\s+$/
 
" Informative status line
set statusline=%F%m%r%h%w\ %10.Y\ %{&ff}\ %50.c,\ %l/%L\ (%p%%)
set laststatus=2

set clipboard=unnamed


vmap ,x :!tidy -q -i<CR>

"set runtimepath=~/.vim/bundle
