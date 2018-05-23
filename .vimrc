" Colors
colorscheme codedark " set colorscheme codedark in .vim file

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

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
