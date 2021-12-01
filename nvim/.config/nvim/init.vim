set exrc				" uses init on that folder

set showmatch			" show matching
set ignorecase			" case insensitiev
set nohlsearch 			" remove highlight search
set incsearch			" highlight while typing for search

" change to 4 if too rough
set tabstop=8
set softtabstop=8		" number of coloumns occupied by a tab
set shiftwidth=8		" width for auto indent
set autoindent 			" indent a new line the same


set number			" numbered line
set relativenumber		" relative numbers on line
set nu				" number the current line


set wildmode=longest,list	" get bash-like tab completions
set cc=80 			" set coloumn border

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


call plug#end()

colorscheme gruvbox 
" highlight Normal guibg=NONE ctermbg=NONE 

" leader key
let mapleader=" "

" tab movement
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

" nerd tree toggle
map  <C-b> :NERDTreeToggle<CR>

" Telescope
nnoremap  <leader>t  :Telescope<CR>

" insert mode movement
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj


" Github fugitive keymaps
nmap <Leader>gs :G<CR>
nmap <Leader>gc :Git commit<CR>



"#auto complete with -> compe

"set completeopt=menuone,noselect

"let g:compe = {}
"let g:compe.enabled = v:true
"let g:compe.autocomplete = v:true
"let g:compe.debug = v:false
"let g:compe.min_length = 1
"let g:compe.preselect = 'enable'
"let g:compe.throttle_time = 80
"let g:compe.source_timeout = 200
"let g:compe.resolve_timeout = 800
"let g:compe.incomplete_delay = 400
"let g:compe.max_abbr_width = 100
"let g:compe.max_kind_width = 100
"let g:compe.max_menu_width = 100
"let g:compe.documentation = v:true

"let g:compe.source = {}
"let g:compe.source.path = v:true
"let g:compe.source.buffer = v:true
"let g:compe.source.calc = v:true
"let g:compe.source.nvim_lsp = v:true
"let g:compe.source.nvim_lua = v:true
"let g:compe.source.vsnip = v:true
"let g:compe.source.ultisnips = v:true
"let g:compe.source.luasnip = v:true
"let g:compe.source.emoji = v:true

"inoremap <silent><expr> <C-Space> compe#complete()
"inoremap <silent><expr> <CR>      compe#confirm('<CR>')
"inoremap <silent><expr> <C-e>     compe#close('<C-e>')
"inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
"inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

