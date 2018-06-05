set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initilize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" the color theme I like the most now
Plugin 'tomasiser/vim-code-dark'
"
" the color theme dracula
" Plugin 'dracula/vim'

" python indent based on PEP8
Plugin 'vim-scripts/indentpython.vim'

" plugin for auto-complete: YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" add PEP8 checking with the nifty little plugin
Plugin 'nvie/vim-flake8'

" NERDTree for proper file tree
Plugin 'scrooloose/nerdtree'

" NERDTree for proper file tree
" use git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree   
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" emmet-vim for high speed html
Plugin 'mattn/emmet-vim'

" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end() " required

filetype plugin indent on " required


" Colors
colorscheme codedark " set colorscheme codedark in .vim file

let python_highlight_all=1
syntax enable " enable syntax processing

" Spaces and tabs (not necessary, since avoid using tab)
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

" UI Configuration
set number " show line numbers
set showcmd " show command in bottom bar, shows the last command entered

set cursorline " highlight current line
filetype indent on " load filetype-specific indent files

set wildmenu " visual autocomplete for command menu, which is super cool and useful!
set showmatch " highlight matching [{()}]

set encoding=utf-8 " Since a lot of python, it seems that use utf-8

" Searching
set incsearch " search as characters are entered
set hlsearch " highligth matches

" Folding
set foldenable " enable folding

set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max


" space open/closes folds
nnoremap <space> za

set foldmethod=indent " fold based on indent level

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" python PEP8 indent
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

set encoding=utf-8 " Not sure whether this one is useful for now.

let g:ycm_autoclose_preview_window_after_completion=1 " autocomplete window goes away when your're done with it
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> " use space + g to goto the definition
let g:ycm_server_keep_logfiles=1
let g:ycm_server_log_level='debug'

" hide .pyc file in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']


set laststatus=2

if has("gui_running")
    set guifont=Noto\ Mono\ for\ Powerline:h12
endif
