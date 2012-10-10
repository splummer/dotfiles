syntax on
set nocp 			"We want to use vim not vi
set nocompatible 		"be iMproved
set laststatus=2   		" Always show the statusline
set encoding=utf-8 		" Necessary to show Unicode glyphs
set ignorecase 			"Ignore case in searches
set noexpandtab 		"Don't want tabs replaced with spaces
set incsearch 			"Incremental search (whatever that means)
set title 			"Title the term window
set ttyfast 			"Smoother changes
set showcmd 			"Show uncompleted command
set showmatch 			"Show matching parenthesis
set showmode 			"Show current mode
set ruler 			"show current position
set autoindent                  " always set autoindenting on
set pastetoggle=<F2>            "Allow pasting of large blocks of text without indenting
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=1000
set backupdir=~/.tmp            " set backup directory to ~/.tmp
set directory=~/.tmp
set autoread                    " automatically updates file when editted outside vim
set report=0 			"show report on changes to file, 0 means all changes
"set statusline=%<%f\ %h%m%r%=%-20.(line=%l,col=%c%V,totlin=%L%)\%h%m%r%=%-40(,%n%Y%)\%P "Status line


 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'vim-colors-solarized'
 Bundle 'vim-powerline'
 " vim-scripts repos
 " non github repos
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 "
set background=dark
colorscheme solarized
