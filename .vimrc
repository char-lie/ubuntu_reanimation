set autoindent
set cindent
"set shiftwidth=4
"set tabstop=4
set sw=4 ts=4 sts=4
set expandtab
set nu
colorscheme slate
set wildmenu
set wildmode=list:longest,full
setlocal spelllang=ru_yo,en_us spell

highlight OverLength ctermbg=red ctermfg=white guibg=#702010
match OverLength /\%81v.\+/

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let g:Tex_MakeIndexFlavor = 'texindy -L russian -C utf8 $*.idx'

" Erlang stuff
set runtimepath+=$HOME/.vim/vimerl
autocmd Filetype erlang setlocal omnifunc=erlang_complete#Complete

" Short indents for several languages
autocmd FileType tex,ruby,erlang,html setlocal sw=2 ts=2 sts=2
autocmd FileType make setlocal noexpandtab
