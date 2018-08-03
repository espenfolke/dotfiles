" General Stuff
filetype on
syntax on

set t_Co=256
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h18
set lines=30 columns=100

set colorcolumn=80

set number relativenumber

"Leader
let mapleader="`"

" Reload Vim Config Without Having To Restart Editor
map <leader>s :source ~/.vimrc<CR>

" Smart Defaults
set hidden
set history=200
set undolevels=200
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<

" Better Movements
nnoremap H 0
nnoremap L $
nnoremap J G
nnoremap K gg

" Indentation
filetype plugin indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>
set clipboard=unnamed  " use the clipboards of vim and win

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Show matching parenthesis
set showmatch

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()


" ============================================================================
" Python IDE Setup
" ============================================================================


" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

" NerdTree
" git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
map <leader>k :NERDTreeToggle<CR>

" Syntastic
"" cd ~/.vim/bundle && \
"" git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = 'clang++ -std=c++11 -stdlib=libc++ -Weverything -Wno-c++98-compat'
