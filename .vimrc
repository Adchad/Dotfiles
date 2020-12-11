set nocompatible              " be iMproved, required	
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'dracula/vim',{'name':'dracula'}

" git repos on your local machine (i.e. when working on your own plugin)
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Dave-Elec/gruvbox'
Plugin 'vim-airline/vim-airline'

Plugin 'mattn/emmet-vim'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'mhinz/vim-startify'

Plugin 'preservim/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'tpope/vim-obsession'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


filetype on
set mouse=a

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set nowrap
set smartcase
set noswapfile
set incsearch
set smartindent
set nu rnu

set clipboard=unnamedplus

vnoremap <C-y> "+y
map <C-p> "+P
map <C-s> :update <cr>
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

map <C-n> :NERDTreeToggle<CR>




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

nnoremap <leader><Space> gt<cr>

map <C-q> :NERDTreeClose <bar> mks! ~/.vim/sessions/current.vim <bar>wqa<cr>

let g:nerdtree_tabs_smart_startup_focus=0
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0

let g:NERDTreeWinSize=15
