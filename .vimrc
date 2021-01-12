syntax on

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set scrolloff=3
"set smartcase		" Do smart case matching
set ignorecase
set hlsearch
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set number
set ruler
set cursorline
set relativenumber
set autoindent
set cindent
set shiftwidth=4
set softtabstop=4
set ts=4

"vundle 插件管理
set nocompatible " be iMproved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'itchyny/lightline.vim'
Plugin 'itchyny/vim-gitbranch'
" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" try to make putty colorful
if &term =~ "xterm"
	"256 color --
	let &t_Co = 256
endif
set laststatus=2
let g:lightline = { 
	\ 'colorscheme': 'powerline',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste' ],
	\			  [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\	'gitbranch': 'FugitiveHead'
	\ },
	\ }

set noshowmode

" vimwiki setting 
let wiki_main = {}
let wiki_main.path = '~/vimwiki/'
let wiki_main.path_html = '~/../var/www/html/' 
let wiki_main.auto_toc = 1

let g:vimwiki_list = [wiki_main]
let g:vimwiki_valid_html_tags = 'img,h1,div'
