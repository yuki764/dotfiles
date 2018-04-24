"dein Scripts-----------------------------
" at the first time, you need to clone dein.
" run followning commands
" $ mkdir -p ~/.vim/repos/github.com/Shougo/dein.vim
" $ git clone https://github.com/Shougo/dein.vim.git ~/.vim/repos/github.com/Shougo/dein.vim
if &compatible
	set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim')
	call dein#begin('~/.vim')
	call dein#add('~/.vim/repos/github.com/Shougo/dein.vim')

	" my plugins
	call dein#add('thinca/vim-quickrun')
	call dein#add('Shougo/vimfiler.vim')
	call dein#add('Shougo/unite.vim')

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" show line number
set number
" tab key
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
" file info
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
" status line
set laststatus=2
set statusline=\ %f%m%r%h%w\ [ENCODING=%{&fenc},\ FORMAT=%{&ff},\ TYPE=%Y]%=(\ %l,\ %v\ )\ [Total:%L\ lines]\ 
" use highlight
set hlsearch
" show control char
set list
set listchars=tab:^-,trail:-,nbsp:%
" message language
language messages en_US.UTF-8

" backspace
noremap! <C-?> <C-h>

" to change buffers easily
nnoremap <F3> :buffers<CR>:buffer<Space>

" ctags
au BufNewFile,BufRead *.{cpp,hpp,h} set tags+=./tags;
noremap <C-]> g<C-]>

" QuickRun settings
nnoremap <F5> :QuickRun<Space>-args<Space>
let g:quickrun_config = {'_' : { 'split' : ':botright vsplit', 'close_on_empty' : 1 }}

" VimFiler
noremap <F8> :VimFiler -split -simple -winwidth=35 -no-quit<CR>
