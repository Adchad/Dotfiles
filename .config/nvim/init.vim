filetype off                  " required

"set encoding=UTF-8
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
Plug 'VundleVim/Vundle.vim'
Plug 'dracula/vim',{'name':'dracula'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
Plug 'sirver/ultisnips'
Plug 'Townk/vim-autoclose'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'kien/ctrlp.vim'
Plug 'unblevable/quick-scope'       
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'

call plug#end()            " required
filetype plugin indent on    " required


set clipboard=unnamedplus
filetype on
"set mouse=a

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set nowrap
set smartcase
set noswapfile
set incsearch
set smartindent
set nu rnu

"set clipboard=unnamedplus



map <C-s> :update <cr>
inoremap <C-s> <Esc>:update <cr>
"
colorscheme desert

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:airline#extensions#whitespace#enabled = '0'
highlight Normal ctermbg=None
let g:gruvbox_contrast_dark = 'hard'
let g:dracula_colorterm = 0
let g:dracula_italic = 0
colorscheme dracula
set ttimeoutlen=50


set noshowmode
set laststatus=0
set noshowcmd


nnoremap <SPACE> <Nop>
let mapleader = " "

noremap <leader>& 1gt
noremap <leader>é 2gt
noremap <leader>" 3gt
noremap <leader>' 4gt
noremap <leader>( 5gt
noremap <leader>- 6gt
noremap <leader>è 7gt
noremap <leader>_ 8gt
noremap <leader>ç 9gt
noremap <leader>à :tablast<cr>

nnoremap <C-Right> gt<cr>
nnoremap <C-Left> gT<cr>

noremap <leader>h :wincmd h<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>l :wincmd l<CR>

let g:NERDTreeWinSize=25
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
let NERDTreeMapOpenInTabSilent='<tab>'
let NERDTreeAutoDeleteBuffer = 1
map <Leader>v :NERDTreeFind<CR>


highlight VertSplit cterm=NONE


set foldnestmax=1
nnoremap <leader>f :setlocal foldmethod=syntax <bar> %foldc<cr>



set colorcolumn=80
nnoremap <leader>w :set wrap!<CR>



tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l



source ~/.config/nvim/coc.vim
