syntax on
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
"execute pathogen#infect()
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
"Bundle 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

call vundle#end()
filetype plugin indent on

"NerdTree
map <F2> :NERDTreeToggle<CR>

"YCM
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"Devicons
set encoding=UTF-8

filetype plugin indent on
set number
set laststatus=2
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set noexpandtab
set foldmethod=syntax
set foldlevel=99
set cursorline
"highlight OverLength ctermbg=1 ctermfg=white
"match OverLength /\%81v.\+/

set colorcolumn=121
highlight colorcolumn ctermbg=8
colorscheme monokai

nnoremap <F4> :call TabWidthToggle()<cr>
nnoremap <F5> :call WrapToggle()<cr>

function! TabWidthToggle()
	if &tabstop == 4
		setlocal tabstop=8
		setlocal softtabstop=8
		setlocal shiftwidth=8
	else
		setlocal tabstop=4
		setlocal softtabstop=4
		setlocal shiftwidth=4
	endif
endfunction

function! WrapToggle()
	if &wrap == 1
		set nowrap
	else
		set wrap
	endif
endfunction

" use real tabs for these languages
autocmd FileType c,cpp
			\ setlocal noexpandtab

" use two spaces for these languages
autocmd FileType ruby 
			\ setlocal expandtab |
			\ setlocal tabstop=2 |
			\ setlocal shiftwidth=2

" use four spaces for these languages
autocmd FileType css,python,sh,java
			\ setlocal expandtab |
			\ setlocal tabstop=4 |
			\ setlocal shiftwidth=4

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

nnoremap ; :
nnoremap : :
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"imap { {}<left>
inoremap {<cr> {<cr>}<c-o>O<tab>
