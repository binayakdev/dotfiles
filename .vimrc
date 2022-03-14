" .--.--.|__|.--------.----.----.
" |  |  ||  ||        |   _|  __|
"  \___/ |__||__|__|__|__| |____|
"

"======================= Some basic settings ============================= 
syntax on
set noerrorbells "Doesn't ring a bell when there is an error
set belloff=all " Disabling error bells for windows
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
set lazyredraw "redraws the screen when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set nohlsearch "doesn't highlights matching searches
set signcolumn=yes " shows the column that shows error symbols
set splitbelow splitright " set vertical split to open below and horizontal to right
" This shows the highlights the line the cursor is in
   set cursorline
   hi cursorline cterm=none term=none
   autocmd WinEnter * setlocal cursorline
   autocmd WinLeave * setlocal nocursorline
   highlight CursorLine guibg=#303000 ctermbg=234
set nocompatible " required for vim polyglot
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
let g:python_highlight_all = 1 " Python syntax highlight https://github.com/vim-python/python-syntax

"======================= Plugins for vim =============================

call plug#begin()

" For cosmetic
   Plug 'morhetz/gruvbox' " This is the colorscheme for vim
   Plug 'vim-airline/vim-airline' " Nice statusline at the bottom and top of vim window
   Plug 'vim-airline/vim-airline-themes' " This is the official theme repository for vim-airline
   Plug 'ryanoasis/vim-devicons' " Adds glyph icons in vim. Terminal must use a font that supports glyphs
   Plug 'NLKNguyen/papercolor-theme' " Paper like theme for vim

" Extending vim functionalities
   Plug 'mhinz/vim-startify' " Shows recently used or bookmarked files in the start screen
   Plug 'preservim/NERDTree' " A plugin to explore directories in the side tab view
   Plug 'vim-utils/vim-man' " To view man pages in vim
   Plug 'tpope/vim-fugitive' " A plugin for git in vim
   Plug 'sheerun/vim-polyglot' " Better syntax highlighting and language packs
   Plug 'tpope/vim-surround' " Provides mappings to easily delete, change and add add surroundings in pairs
   Plug 'Yggdroot/indentLine' " Visual representation of the indentation level
   Plug 'Raimondi/delimitMate' " Autmatically closes parentheses, brackets, quotes, XML tags and more
   Plug 'vim-syntastic/syntastic' " Checks the syntax.
   Plug 'tpope/vim-commentary' " Better commenting. Use gcc to toggle comments
   Plug 'mattn/emmet-vim' " This is emmet for HTML
   " Plug 'neoclide/coc.nvim', {'branch': 'release'} "Code completion and intellisense for various languages
   Plug 'junegunn/fzf.vim'
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " A fuzzy finder that help to find files in the working directory

call plug#end()

"======================= Syntastic configuration =============================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] } " Disables syntastic check by default for all files
let g:syntastic_always_populate_loc_list = 1 " Populates the window below
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'

" Python
let g:syntastic_python_checkers = ['pylint']

" Javascript
" let g:syntastic_javascript_eslint_exe='$(node_modules .bin)/eslint'
let g:syntastic_javascript_checkers = ['eslint']

"======================= COC configuration =============================
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"======================= Airline configuration =============================

let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1

"======================= Fuzzy Finder (fzf) configuration =============================

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
" The following setting doesn't search files in the directory written after
" the --glob flag. Need to install 'ripgrep' package in the system for this to
" work.
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**' --glob '!build/**' --glob '!.vscode' --glob '!node_modules' --glob '!venv/**'"

"======================= Emmet configuration =============================

let g:user_emmet_leader_key=',' " global key remapped from default <C-Y> leader
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall " Emmet only works for HTML and CSS files

"======================= Key remaps for vim/nvim =============================

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Opening vimrc from anywhere
nnoremap <silent> <leader>v : e ~/.vimrc<CR>

" Cycling through the buffer
nnoremap <silent> <C-Right> :bn<CR>
nnoremap <silent> <C-Left> :bp<CR>
nnoremap <silent> <Leader>q :bd<CR>

" Cycling through the tabs
nnoremap <silent> <F7> :tabp<CR>
nnoremap <silent> <F8> :tabn<CR>

" Nerd Tree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Fuzzy finder
nnoremap <silent> <C-f> :Files<CR>

" Syntastic
nnoremap <F5> :SyntasticCheck<CR>
nnoremap <C-down> :lnext<CR>
nnoremap <C-up> :lprevious<CR>

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Resize window
" nmap <C-w><left> <C-w><
" nmap <C-w><right> <C-w>>
" nmap <C-w><up> <C-w>+
" nmap <C-w><down> <C-w>-

"======================= Color scheme configuration =============================

colorscheme gruvbox
set background=dark
" The folllowing line makes the vim/nvim background transparent
hi Normal guibg=NONE ctermbg=NONE


"======================= Additional footer information =============================

" https://thevaluable.dev/vim-adept/ For some cool vim tutorials
"
" Info: Specific file settings
" autocmd BufRead, BufNewFile *.txt setfiletype text 
" The above line can be used to specify settings for txt files.
" The file should be put in ~/.vim/ftdetect/text.vim (this path may be
" different on windows)
"

" This is the comment from the test branch
