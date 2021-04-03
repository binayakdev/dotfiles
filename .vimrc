" This is the vimrc file

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set encoding=utf-8
set relativenumber

set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set hlsearch "highlights matching searches

nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

" Plugins for vim
call plug#begin()

    Plug 'morhetz/gruvbox'
    Plug 'preservim/NERDTree'
    Plug 'vim-utils/vim-man'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-surround'
    Plug 'Raimondi/delimitMate'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-syntastic/syntastic'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1

" Nerd Tree
nnoremap<C-b> :NERDTreeToggle<CR>

" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

colorscheme gruvbox
set background=dark
