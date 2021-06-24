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

" Cycling through the buffer
nnoremap <silent> <C-Right> :bn<CR>
nnoremap <silent> <C-Left> :bp<CR>
nnoremap <silent> <Leader>q :bd<CR>

" Cycling through the tabs
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

" Plugins for vim
call plug#begin()

   Plug 'morhetz/gruvbox' " This is the colorscheme for vim
   Plug 'preservim/NERDTree' " A file system explorer
   Plug 'vim-utils/vim-man' " To view man pages in vim
   Plug 'sheerun/vim-polyglot' " A collection of language packs
   Plug 'tpope/vim-surround' " Provides mappings to easily delete, change and add such surroundings in pairs.
   Plug 'Raimondi/delimitMate' " Autmatically closes parentheses, brackets, quotes, XML tags and more
   Plug 'vim-airline/vim-airline' " Nice statusline at the bottom of vim window
   Plug 'vim-syntastic/syntastic' " Checks the syntax
   Plug 'tpope/vim-commentary' " Better commenting
   Plug 'ryanoasis/vim-devicons' " Adds icons to the plugins
   Plug 'vim-airline/vim-airline-themes' " This is the official theme repository for vim-airline
   Plug 'mattn/emmet-vim' " This is emmet for HTML
   Plug 'neoclide/coc.nvim', {'branch': 'release'} "Code completion and intellisense for javascript/typescript in vim
   Plug 'junegunn/fzf.vim'
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " This is a fuzzy finder to select apps
   " Add a fuzzy finder plugin in the future to search for files (fzf.vim
   " maybe it is only for neo vim)

call plug#end()

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" Setting checkers for languages
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

nnoremap <F5> :SyntasticCheck<CR>
nnoremap <C-down> :lnext<CR>
nnoremap <C-up> :lprevious<CR>

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1

" Nerd Tree
nnoremap<C-b> :NERDTreeToggle<CR>

" Fuzzy finder i.e. fzf plugin
nnoremap <silent> <C-f> :Files<CR>

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**' --glob '!build/**' --glob '!.vscode' --glob '!node_modules'"

" redefining the trigger key for emmet
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,ejs EmmetInstall

" Checkers for different programs
let g:syntastic_python_checkers = ['pylint']

colorscheme gruvbox
set background=dark

" https://thevaluable.dev/vim-adept/ For some cool vim tutorials
"
" Info: Specific file settings
" autocmd BufRead, BufNewFile *.txt setfiletype text 
" The above line can be used to specify settings for txt files.
" The file should be put in ~/.vim/ftdetect/text.vim (this path may be
" different on windows)
