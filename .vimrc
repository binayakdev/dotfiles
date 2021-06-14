syntax on
set noerrorbells "Doesn't ring a bell when their is an error
set tabstop=4 softtabstop=4 "Defaults the tab spacing to 4
set shiftwidth=4
set expandtab
set smartindent "automatically indents when going to a new line
set nu "shows the line number
set nowrap "The line doesn't show up in a new line when it runs out of screen
set noswapfile
set nobackup
set incsearch
set relativenumber
set encoding=utf-8
set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set nohlsearch "doesn't highlights matching searches
set signcolumn=yes " shows the column that shows error symbols
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise

" Python syntax highlight https://github.com/vim-python/python-syntax
let g:python_highlight_all = 1

nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

" Plugins for vim
call plug#begin()

   Plug 'morhetz/gruvbox' " This is the colorscheme for vim
   Plug 'preservim/NERDTree' " A file system explorer
   Plug 'vim-utils/vim-man' " To view man pages in vim
   "" Plug 'ycm-core/YouCompleteMe' " Code auto completion
   Plug 'sheerun/vim-polyglot' " A collection of language packs
   Plug 'tpope/vim-surround' " Provides mappings to easily delete, change and add such surroundings in pairs. 
   Plug 'Raimondi/delimitMate' " Autmatically closes parentheses, brackets, quotes, XML tags and more
   Plug 'vim-airline/vim-airline' " Nice statusline at the bottom of vim window
   Plug 'vim-syntastic/syntastic' " Checks the syntax
   Plug 'ryanoasis/vim-devicons' " Adds icons to the plugins
   Plug 'vim-airline/vim-airline-themes' " This is the official theme repository for vim-airline
   Plug 'mattn/emmet-vim' " This is emmet for HTML

call plug#end()

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1

" Nerd Tree
nnoremap<C-b> :NERDTreeToggle<CR>

" redefining the trigger key for emmet
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

colorscheme gruvbox
set background=dark
