"===Vundle=============================================================
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Defaul plugins for Vundle itself
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"---Plugins-------------------------------------------------------------------
" Syntax plugins
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
" Plugin 'chemzqm/vim-jsx-improve'

" Eslint plugin
Plugin 'w0rp/ale'

" Tag Match display
Plugin 'Valloric/MatchTagAlways'

" Color preview
Plugin 'ap/vim-css-color'

" Multicursor
Plugin 'terryma/vim-multiple-cursors'

"---EndPlugins----------------------------------------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"===NormalConfig=============================================================
" Scheme
set background=dark
colorscheme tender
" colorscheme molokai
" colorscheme solarized
" colorscheme onehalfdark
" colorscheme hybrid_material
" colorscheme stellarized

" Indent
set tabstop=2
set shiftwidth=2

" Change ESC to jk
inoremap jj <ESC>

" Syntax
syntax on

" Line number
set number

" Remap panes navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Pane Split direction
set splitbelow
set splitright

" Search
set incsearch
set hlsearch

" Set 256 colors
let &t_Co=256

" React setup for plugins
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

" Allow MatchTagAlways to highlight jxs
let g:mta_filetypes = {
			\ 'javascript.jxs' : 1,
			\}