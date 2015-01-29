set nu
set nocp
set ru
set autoindent
set cindent

set showcmd

set ts=4
set sw=4
au Bufenter *.\(c\|cpp\|h\|java\|py\) set et

set bs=indent,eol,start

set sm
set hls
set is

set title

set tags=tags,~/tags

set nobackup

syntax on

filetype on
au FileType c map <F5> : !gcc -Wall -g % -o %<.out
au FileType c map <F6> : !./%<.out
au FileType c map <F7> : !gcc -Wall -g % -o %<.out && ./%<.out<CR>

au FileType cc,cpp map <F5> : !g++ -Wall -g % -o %<.out
au FileType cc,cpp map <F6> : !./%<.out

au FileType java map <F5> : !javac -g %
au FileType java map <F6> : !java -g %<

au FileType py map <F6> : !python %

map <c-h> <c-w>h
map <c-l> <c-w>l
map <c-j> <c-w>j
map <c-k> <c-w>k
