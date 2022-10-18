" Enable file type detection
filetype on

" Enable and load plugins. Load indent file for detected file type
filetype plugin indent on

" Turn snytax highlight on
syntax on

" Highlight cursor line underneath the cursor horizontally.
" set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
" set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
" set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
" set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
" set hlsearch

" Set the commands to save in history default number is 20.
" set history=20

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Sign column color
highlight SignColumn ctermbg=green

" FLAKE8 customisations -------------------------------------------------

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
nnoremap <C-K> :call flake8#Flake8ShowError()<cr>

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

" Flake8 plugin for python files
Plug 'nvie/vim-flake8'

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Map ESC to jj
inoremap jj <Esc>

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


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
