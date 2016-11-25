set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Surround
Plugin 'tpope/vim-surround'

" Commentary
Plugin 'tpope/vim-commentary'

" ReplaceWitRegister
Plugin 'vim-scripts/ReplaceWithRegister'

" vim-sort-motion
Plugin 'christoomey/vim-sort-motion'

"JEDI
 Plugin 'davidhalter/jedi-vim'

" Autoclose
Plugin 'Townk/vim-autoclose'

"Css colors
Plugin 'lilydjwg/colorizer'

"Emmet-vim
Plugin 'mattn/emmet-vim'

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

"" No cerrar
" set hidden

set cursorline

set number
set relativenumber
syntax on

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
"set smartindent


set hlsearch " Highlight search
set incsearch " Search as characters are entered
nmap <silent> ,, :nohlsearch<CR>

set nowrap

" Visual autocomplete for command menu
set wildmenu

" Redraw only when needed
set lazyredraw

" Highlight matching
set showmatch

" Coloring
set t_Co=256
colorscheme colorsbox-stnight

filetype indent on

set scrolloff=4

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Habit breaking, habit making
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Paste mode
set pastetoggle=<F2>

" Remove ZZ
noremap ZZ :echom 'No quiero ZZ'<CR>

" enable folding
autocmd FileType python setlocal foldenable
autocmd FileType python setlocal foldmethod=indent
autocmd FileType python setlocal foldnestmax=1

" JEDI
autocmd FileType python setlocal completeopt-=preview
let g:jedi#show_call_signatures = "1"
