set nocompatible		" disable vi
set showmatch			" show matching
set ignorecase			" case insensitiev
set hlsearch 			" highlight search
set incsearch			" incremental search
set tabstop=4
set softtabstop=4		" number of coloumns occupied by a tab
set shiftwidth=4		" width for auto indent
set autoindent 			" indent a new line the same
set number



set wildmode=longest,list	" get bash-like tab completions
" set cc=80 			" set coloumn border

filetype plugin on 	" autoindent depending on file type

syntax on
set mouse=a					" enable mouse click
set clipboard=unnamedplus	" use system clipboard
filetype plugin on 		
set cursorline
set ttyfast			" speed scrolling


colorscheme dracula

" set noswapfile
" set backupir=~/.cache/vim 


call plug#begin("~/.config/nvim/plugged")
 " Plugin Section
 Plug 'navarasu/onedark.nvim', {'as':'onedark'}
 Plug 'dracula/vim',{'as':'dracula'}
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>


" autocomplete menu
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

