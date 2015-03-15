syntax on
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on

"NerdTree
map <F2> :NERDTreeToggle<CR>

"YCM
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

set number
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set foldmethod=syntax

set runtimepath+=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
filetype plugin indent on 
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

augroup vimrc_autocmds
autocmd!
" highlight characters past column 120
autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Red
autocmd FileType python match Excess /\%120v.*/
autocmd FileType python set nowrap
augroup END

