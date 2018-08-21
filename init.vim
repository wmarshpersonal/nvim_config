execute pathogen#infect()

set t_Co=256
set background=dark
colorscheme monokai

" No word-wrap, thanks
set nowrap

" Four blank spaces for tabs
set tabstop=2 softtabstop=0 expandtab shiftwidth=2
set expandtab

" Show both absolute and relative numbers in gutter
set number
set relativenumber

" Swap files go here
set directory^=$HOME/.vim/tmp/

" gitgutter should be speedy
set updatetime=100

" Let's omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" lazy drawing
set lazyredraw

" Set .ctrlp as a CtrlP root marker
let g:ctrlp_root_markers = ['.ctrlp']

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Airline should use powerline fonts
let g:airline_powerline_fonts=1

" Asynchronous Lint Engine (ALE)
" Enable completion where available.
let g:ale_completion_enabled = 1
let g:ale_linters = { 'javascript': ['flow', 'eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'] }
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
highlight ALEError ctermbg=none cterm=underline 
highlight ALEWarning ctermbg=none cterm=underline
let g:ale_sign_error = '💥'
let g:ale_sign_warning = '🤢'
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
nnoremap <leader>af :ALEFix<cr>
