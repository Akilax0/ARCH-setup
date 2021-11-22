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
set cc=80 			" set coloumn border

filetype plugin on 	" autoindent depending on file type

syntax on
set mouse=a					" enable mouse click
set clipboard=unnamedplus	" use system clipboard
filetype plugin on 		
set cursorline
set ttyfast			" speed scrolling


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
 Plug 'neovim/nvim-lspconfig'
 Plug 'williamboman/nvim-lsp-installer'
 "telescope
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" PlatformIO
 Plug 'neomake/neomake'

call plug#end()

colorscheme gruvbox 
" highlight Normal guibg=NONE ctermbg=NONE 

" leader key
let mapleader=" "


map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-b> :NERDTreeToggle<CR>
map  <C-b> :NERDTreeToggle<CR>
nnoremap  <leader>t  :Telescope<CR>
" autocomplete menu
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"


" insert mode movement
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

""LSP language server setups
lua << EOF
local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
    server:setup(opts)
end)

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

EOF
