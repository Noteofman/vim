filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle itself
Plugin 'gmarik/Vundle.vim'
" PHPCS/MD/Linter
"Bundle 'joonty/vim-phpqa.git'
Bundle 'scrooloose/syntastic'
" PHP Doc
Bundle 'tobyS/pdv'
" Vmustache
Bundle 'tobyS/vmustache'
call vundle#end()

execute pathogen#infect()

filetype plugin indent on


syntax on
set smartindent
set ts=4
set shiftwidth=4
set expandtab
" PHP QA
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
set scrolloff=3
set smartindent
set list
set listchars=tab:>~,nbsp:_,trail:.
set number


let g:syntastic_php_checkers=['php', 'phpmd', 'phpcs']
let g:syntastic_javascript_jshint_args = "--config /home/stuart/.jshintrc"
let g:syntastic_php_phpmd_post_args = "/home/forsdike/enableit_coding_standards/EnableIT/phpmd.xml"
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_warning_symbol = "⚠"

let g:flow#enable = 0

