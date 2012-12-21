set nocompatible	" not compatible with the old-fashion vi mode
set encoding=utf-8
set backspace=2			" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set autoread		" auto read when file is changed from outside

set tabstop=4		" use # of chars to display a <TAB> 
set shiftwidth=4	" insert # of chars in autoindent
set softtabstop=4	" insert # of chars when pressing <TAB>
" set expandtab		" insert spaces instead of <TAB> 
set autoindent		" auto indentation
set copyindent		" copy the previous indentation on autoindenting
"set smartindent	" smart indentation for C-like language
"set cindent		" smart indentation especially for C language
set smarttab		" insert tabs on the start of a line according to context
set incsearch		" incremental search
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattrn is all lowercase,case-sensitive otherwise

set hlsearch						" search highlighting
set clipboard=unnamed				" yank to the system register (*) by default
set showmatch						" Cursor shows matching ) and }
set showmode						" Show current mode
set wildchar=<TAB>					" start wild expansion (auto-completioin of filename) in the command line using <TAB>
set wildmenu						" wild char completion menu
set wildignore=*.o,*.class,*.pyc	" ignore these files while expanding wild chars

" folding settings
set foldmethod=indent				" use indent for folding (python)
set foldnestmax=1					" maximal level of folding
" in normal mode open and close a fold with spacebar
nnoremap <space> za
" in visual mode open and close a fold with spacebar
"vnoremap <space> zf


let python_highlight_all = 1		" hight all syntax, see 'syntax/python.vim'

set t_Co=256		" enable 256 colors
colorscheme torte
syntax on			" syntax highlight
"filetype off		" necessary to make ftdetect work on Linux
filetype on			" Enable filetype detection
filetype indent on	" Enable filetype-specific indenting
filetype plugin on	" Enable filetype-specific plugins


" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" For pathogen.vim: auto load all plugins in .vim/bundle
call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

" use fancy symbols in Powerline
let g:Powerline_symbols = 'fancy'

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <F5> :NERDTree<CR>
map <F4> :GundoToggle<CR>


