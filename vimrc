" Enable file type detection
filetype on

" Enable and load plugins. Load indent file for detected file type
filetype plugin indent on

" Turn snytax highlight on
let python_highlight_all=1
syntax on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Screen split
set splitbelow
set splitright

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show matching words during a search.
set showmatch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Sign column color
highlight SignColumn ctermbg=green

" FLAKE8 customisations ------------------------------------------------ {{{

" To enable flake8 everytime a python file is saved
autocmd BufWritePost *.py call flake8#Flake8()

" To show errors in gutter
let g:flake8_show_in_gutter=1

" to use colors defined in the colorscheme
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg

" to set custom markers
let g:flake8_error_marker='x'     " set error marker to 'EE'
let g:flake8_warning_marker='w'   " set warning marker to 'WW'
let g:flake8_pyflake_marker='px'     " disable PyFlakes warnings
let g:flake8_complexity_marker='cw'  " disable McCabe complexity warnings
let g:flake8_naming_marker='n'      " disable naming warnings

" add binding to call the function
" nnoremap <C-K> :call flake8#Flake8ShowError()<cr>
" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

" Flake8 plugin for python files
Plug 'nvie/vim-flake8'
" SimplyFold plugin for python files
Plug 'tmhedberg/SimpylFold'
" AutoIndentation based on PEP-8
Plug 'Vimjas/vim-python-pep8-indent'
" Linter PLugin for Syntax Checking
Plug 'dense-analysis/ale'
" Jedi for Python
Plug 'davidhalter/jedi-vim'
" NerdTree for file exploration
Plug 'preservim/nerdtree'
" For Git control
" Use Credential cache to avoid error while pushing
Plug 'tpope/vim-fugitive'
" Comments
Plug 'tpope/vim-commentary'
" Virtual env support
Plug 'jmcantrell/vim-virtualenv'
" Status Line
Plug 'powerline/powerline'

" Color Schemes
" Archery
Plug 'Badacadabra/vim-archery'
" Nord
Plug 'arcticicestudio/nord-vim'
" Dogrun
Plug 'wadackel/vim-dogrun'

call plug#end()

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" Map ESC to jj
inoremap jj <Esc>

" Split screen navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map za to space for easy fold
nnoremap <space> za

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

" Commented out ----------------------------------------------------" {{{

" Highlight cursor line underneath the cursor horizontally.
" set cursorline
" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn
" Do not save backup files.
" set nobackup
" Show the mode you are on the last line.
" set showmode
" Use highlighting when doing a search.
" set hlsearch
" Set the commands to save in history default number is 20.
" set history=20
" Do not wrap lines. Allow long lines to extend as far as the line goes.
" set nowrap
" }}}
