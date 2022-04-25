set exrc				" uses init on that folder

set showmatch			" show matching
set ignorecase			" case insensitiev
set nohlsearch 			" remove highlight search
set incsearch			" highlight while typing for search

" change to 4 if too rough
set tabstop=4
set softtabstop=4		" number of coloumns occupied by a tab
set shiftwidth=4		" width for auto indent
set autoindent 			" indent a new line the same


set number			" numbered line
set relativenumber		" relative numbers on line
set nu				" number the current line


set wildmode=longest,list	" get bash-like tab completions
set cc=80 			" set coloumn border
set textwidth=80		" set 80 coloumn limit

filetype plugin on		" autoindent depending on file type


syntax on
set mouse=a			" enable mouse click
set clipboard=unnamedplus	" use system clipboard
filetype plugin on 		
set cursorline

set scrolloff=10		"centered cursor
set signcolumn=yes		"coloumn for errors 


" set noswapfile
" set backupir=~/.cache/vim 


call plug#begin("~/.config/nvim/plugged")
 " Plugin Section
 Plug 'gruvbox-community/gruvbox'
 Plug 'dracula/vim',{'as':'dracula'}
 Plug 'ryanoasis/vim-devicons'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'vim-airline/vim-airline'

 "LSP
 "Plug 'neovim/nvim-lspconfig'
 "Plug 'hrsh7th/nvim-compe'
 "Plug 'williamboman/nvim-lsp-installer'

 " COC
 Plug 'neoclide/coc.nvim', {'branch': 'release'}


 "telescope
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
 
" PlatformIO
 Plug 'neomake/neomake'

" Github integration
Plug 'tpope/vim-fugitive'

" Terminal toggling
Plug 'akinsho/toggleterm.nvim'

" Remote SSH file access
Plug 'chipsenkbeil/distant.nvim'
call plug#end()

colorscheme gruvbox 
 "highlight Normal guibg=NONE ctermbg=NONE 

" leader key
let mapleader=" "

" tab movement
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

" nerd tree toggle
map  <C-b> :NERDTreeToggle<CR>

" Telescope
nnoremap  <leader>tt  :Telescope find_files hidden=true no_ignore=true<CR>
nnoremap  <leader>tg  :Telescope git_commits<CR>
nnoremap  <leader>tc  :Telescope commands<CR>

" insert mode movement
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj


" Github fugitive keymaps
nmap <Leader>gs :G<CR>
nmap <Leader>gc :Git commit<CR>
nmap <Leader>gp :Git push<CR>

" Terminal
nnoremap  <leader>z :ToggleTerm size=40 direction=float <CR>
tmap  <C-z> <C-\><C-n>:ToggleTermToggleAll<CR>
tmap  <C-q> exit<CR>
nmap  <C-z> :ToggleTermToggleAll<CR>


