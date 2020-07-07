set nocompatible              " be iMproved, required
filetype plugin indent on                  " required
set expandtab
set tabstop=2
set shiftwidth=2
set laststatus=2

syntax on
colorscheme desert

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set nu

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php setlocal ts=4 sw=4 sts=0 expandtab

set encoding=utf-8
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'shime/vim-livedown'
Plugin 'sheerun/vim-polyglot'
Plugin 'AutoComplPop'
Plugin 'ap/vim-css-color'

" " PHP/Laravel
Plugin 'jwalton512/vim-blade'

" " Python Vim
Plugin 'python-mode/python-mode', { 'branch': 'develop' }
Plugin 'glench/vim-jinja2-syntax'

let g:pymode_python = 'python3'

" " Javascript Vim
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'isruslan/vim-es6'
Plugin 'digitaltoad/vim-pug'
Plugin 'othree/javascript-libraries-syntax.vim'

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

" " SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

nmap <F6> :NERDTreeToggle<CR>

" " Ruby/Rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-surround'

" " Golang Vim
Plugin 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plugin 'fatih/vim-go'

" " Vim related plugins
Plugin 'jeetsukumaran/vim-buffergator'

" " vim airline themes
let g:airline_theme='light'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

call vundle#end()            " required
