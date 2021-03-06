call plug#begin('~/.vim/plugged')
" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language Support
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " LSP support
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'

" Coding help
Plug 'Raimondi/delimitMate'            " auto-close delimiters
Plug 'tpope/vim-fugitive'              " git helper
Plug 'airblade/vim-gitgutter'          " display git changes in left gutter
Plug 'scrooloose/nerdtree'             " file browswer
Plug 'jpalardy/vim-slime'              " send commands to tmux
Plug 'Xuyuanp/nerdtree-git-plugin'     " NERDTree git status
Plug 'sheerun/vim-polyglot' 		       " syntax checking
Plug 'preservim/nerdcommenter'         " easily comment out code
Plug 'dhruvasagar/vim-table-mode'      " edit markdown tables more easily
Plug 'ryanoasis/vim-devicons'          " adds dev icons
Plug 'kosayoda/nvim-lightbulb'         " display a lightbulb when code actions are possible a la vscode
Plug 'nvim-lua/completion-nvim'        " code completion
Plug 'nvim-lua/lsp-status.nvim'        " lsp status
Plug 'nvim-lua/diagnostic-nvim'        " lsp diagnostic info
Plug 'sbdchd/neoformat'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " better highlighing using treesitter
Plug 'hrsh7th/vim-vsnip'               " snippets
Plug 'hrsh7th/vim-vsnip-integ'         " snippets

" General
Plug '907th/vim-auto-save'
Plug 'tpope/vim-obsession'             " save vim session
Plug 'junegunn/fzf' 			             " fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm' 		       " floating terminal popup
Plug 'airblade/vim-rooter' 		         " ensure fzf and rg stay in project scope for search
Plug 'mhinz/vim-startify' 		         " vim start menu
Plug 'justinmk/vim-sneak' 		         " jump to any localtion specified by two characters
Plug 'junegunn/goyo.vim' 		           " zen mode
Plug 'junegunn/limelight.vim' 		     " highlight current section
Plug 'unblevable/quick-scope' 		     " quickly jump to char on line
Plug 'lilydjwg/colorizer' 		         " colorize rgb and other color values
Plug 'haya14busa/is.vim' 		           " remove highlight after search
Plug 'wfxr/minimap.vim' 	 	           " adds code minimap to right of screen like Sublime Text
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-surround' 		         " adds ability to surround objects with quotes
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Editing
Plug 'jeffkreeftmeijer/vim-numbertoggle'      " toggles relative or static line nums
Plug 'liuchengxu/vim-which-key'               " popup keybindings menu

" DSLs
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-consul'
Plug 'hashivim/vim-nomadproject'
Plug 'cespare/vim-toml'
Plug 'ekalinin/Dockerfile.vim'
Plug 'plasticboy/vim-markdown'
Plug 'saltstack/salt-vim'

" Themes
Plug 'dylanaraps/wal.vim'
Plug 'Marfisc/vorange'
Plug 'reedes/vim-thematic'
Plug 'ntk148v/vim-horizon'
Plug 'morhetz/gruvbox'
Plug 'agude/vim-eldar'
Plug 'Nequo/vim-allomancer'
Plug 'tomasr/molokai'
Plug 'ajmwagar/vim-deus'
Plug 'dguo/blood-moon', {'rtp': 'applications/vim'}
Plug 'joshdick/onedark.vim'
Plug 'doums/darcula'
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-wombat-scheme'
Plug 'hzchirs/vim-material'
Plug 'Ardakilic/vim-tomorrow-night-theme'
Plug 'chriskempson/base16-vim'
Plug 'wadackel/vim-dogrun'
Plug 'zacanger/angr.vim'
call plug#end()

" general options and settings
set t_Co=256
let &t_ut=''
set encoding=utf-8
set number
set nocompatible                " Enables us Vim specific features
filetype off                    " Reset filetype detection first ...
filetype plugin indent on       " ... and enable filetype detection
filetype plugin on
set ttyfast                     " Indicate fast terminal conn for faster redraw
set mouse=a 			              " enable mouse
set laststatus=2                " Show status line always
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set autoindent                  " Enabile Autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set number                      " Show line numbers
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " We show the mode with airline or lightline
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw
set clipboard=unnamed  		      " Use system clipboard
set updatetime=300
set completeopt=menuone
set completeopt+=noinsert
set completeopt-=preview
set shortmess+=c
syntax on

"general remaps
let mapleader = ","
imap ;; <esc>
nmap ; :w<CR>
nmap <leader>q :q<CR>
nmap <leader>qq :q!<CR>
command! W :w

" center cursor when entering normal mode
autocmd InsertEnter * norm zz

"next buffer
noremap <C-j> :bn<CR>
"previous buffer
noremap <C-k> :bp<CR>
"close buffer
noremap <C-d> :bd<CR>
"exit normal mode
imap <RightMouse> <Esc>
"enter insert mode
nmap <RightMouse> i<LeftMouse>

" Enable folding
set foldmethod=indent
set foldlevel=99

" set defaults for various file types
au BufNewFile,BufRead *.go
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix|

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

augroup shellscript
    autocmd!
    autocmd FileType sh setlocal iskeyword+=$
augroup END

match Todo /\s\+$/

source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/vim-go.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/startify.vim
source ~/.config/nvim/plugins/which-key.vim
source ~/.config/nvim/plugins/git-gutter.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/floaterm.vim
source ~/.config/nvim/plugins/vim-sneak.vim


" Theme
set termguicolors
"let ayucolor="dark"
let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme base16-onedark
colors deus
set showtabline=2
let g:airline_theme='deus'


" force transparent vim background
hi Normal guibg=NONE ctermbg=NONE

" tmux 
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
	\ 'a': '??? #S',
        \ 'win': '#I #W',
        \ 'cwin': '#I #W',
	\ 'y': '#(spotify status artist) - #(spotify status track) ???',
        \ 'z': '#(date -u "+%%H:%%M:%%S") UTC ???',
        \ 'options': {
        \'status-justify': 'left'}
	\}

" Loads lua config
lua require('init')
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" vsnips stuff
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
