filetype off                  " required
"set encoding=UTF-8
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim',{'name':'dracula'}

Plug 'tomasr/molokai'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" git repos on your local machine (i.e. when working on your own plugin)
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
"""Plug 'Dave-Elec/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
Plug 'vim-syntastic/syntastic'
Plug 'mattn/emmet-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Townk/vim-autoclose'

Plug 'preservim/tagbar'
"Plugin 'mhinz/vim-startify'
"Plugin 'lambdalisue/fern.vim'
Plug 'preservim/nerdtree'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'

Plug 'kien/ctrlp.vim'
Plug 'ap/vim-css-color'
"Plug 'ctrlpvim/ctrlp.vim'

"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'tpope/vim-obsession'
" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set clipboard=unnamed
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

let g:airline#extensions#whitespace#enabled = '0'
highlight Normal ctermbg=None
let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_transparent_bg = 1
let g:dracula_colorterm = 0
let g:dracula_italic = 0
colorscheme dracula
set ttimeoutlen=50

let g:UltiSnipsExpandTrigger="<C-X>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


set noshowmode
set laststatus=0
set noshowcmd





nnoremap <SPACE> <Nop>
let mapleader = " "

vnoremap <leader>y "+y
map <leader>p "+P

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

noremap <leader>h :wincmd h<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>l :wincmd l<CR>

map <silent> <C-q> :NERDTreeClose <bar> mks! ~/.config/nvim/sessions/current.vim <bar>wqa<cr>

let g:nerdtree_tabs_smart_startup_focus=0
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0

let g:NERDTreeWinSize=25

"let NERDTreeQuitOnOpen = 1


let NERDTreeAutoDeleteBuffer = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
"
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1


nnoremap <silent> <leader><Space> :NERDTreeToggle<CR>

nnoremap <C-Right> gt<cr>
nnoremap <C-Left> gT<cr>


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


"let NERDTreeMapOpenInTab='<ENTER>'

highlight VertSplit cterm=NONE


"unmap <C-w>
map <silent> <C-c> :bd!<cr>

let NERDTreeMapOpenInTabSilent='<tab>'

"nmap <silent> <C-t> :TagbarToggle<CR>

" highlight ColorColumn ctermbg=5
"ColorColumn    xxx term=reverse ctermbg=0 guibg=#2C2E3E
" 
"
"
set foldnestmax=1
nnoremap <leader>f :setlocal foldmethod=syntax <bar> %foldc<cr>


let NERDTreeAutoDeleteBuffer = 1

map <Leader>v :NERDTreeFind<CR>

"let NERDTreeCustomOpenArgs = {'file':{'where':'o', 'keepopen':1, 'stay':1}}

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


