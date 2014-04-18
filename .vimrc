if has('vim_starting')
    set nocompatible              
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'


" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/perl-support.vim'

NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


let NERDTreeShowHidden = 1
let file_name = expand("%:p")
if has('vim_starting') && file_name==""
    autocmd VimEnter * execute 'NERDTree ./'
endif

set fileencodings=utf8,iso-2022-jp,cp932,euc-jp
syntax on
set laststatus=2 
set number
set tabstop=4
set autoindent
set cindent
set showmatch
set ignorecase
set smartindent
set shiftwidth=4
set expandtab
