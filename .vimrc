" Automatic reload of .vimrc after edit
autocmd! bufwritepost .vimrc source %

" better copy & paste, works with OS buffer
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a     " On OSX, press ALT and click
set bs=2        " make backspace behave like normal

" rebind <Leader> key
let mapleader = ","  " let? set? 

" quick save
" noremap <C-S> :update<CR>
" vnoremap <C-S> <C-C>:update<CR>
" inoremap <C-S> <C-O>:update<CR>

" Tabs and splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" Moving blocks of code in and out indents
vnoremap < <gv
vnoremap > >gv

" show white space at end of lines
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"" au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme: wombat256mod
" http://www.vim.org/scripts/script.php?script_id=2465
set t_Co=256
color wombat256mod

" Syntax highlighting
filetype off
filetype plugin indent on
syntax on


set number 	" show line numbers
set tw=79	" width of document
set nowrap	" don't wrap lines on load
set fo-=t	" don't wrap lines while typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" some useful settings
set history=700
set undolevels=700

" tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files 
set nobackup
set nowritebackup
set noswapfile


" setup Pathogen to manage plugins
"" mkdir -p ~/.vim/autoload ~/.vim/bundle
"" get pathogen
call pathogen#infect()

" vim-powerline
set laststatus=2
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*






"" source ~/.vim/python.vimrc

"" colorscheme desert
"" set guifont=Menlo\ Regular:h16
"" set tabstop=4
"" set shiftwidth=4
"" set expandtab

"" set encoding=utf-8
"" let python_highlight_all=1
"" filetype indent on
"" set autoindent
"" set smarttab
"" set tw=0
