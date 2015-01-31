" 줄번호를 단다. number
set nu
" vi와의 호환성을 없앤다. no compatible
set nocp

" 현재 행과 열을 표시한다. ruler
set ru

" 다음줄을 자동으로 이전줄과 같이 들여쓰기를 한다.
set autoindent

" 자동으로 C 및 다른 언어 스타일의 들여쓰기를 한다.
set cindent

" cindent와 비슷하나 덜 엄격하다.
" set smartindent

" 마지막 줄에 명령어를 보여준다.
set showcmd

" 탭 간격을 정한다. tabstop
set ts=4

" 들여쓰기 간격을 정한다. shiftwidth
set sw=4
au Bufenter *.\(c\|cpp\|h\|java\|py\) set et

" 백스페이스, del 등이 동작을 정한다. backspace
set bs=indent,eol,start

" (, { 의 짝을 보여준다. showmatch
set sm

" 검색된 단어를 강조해준다. hlsearch
set hls

" 검색중인 단어를 강조해준다. incsearch
set is

" 창의 타이틀에 titlestring을 보여준다.
set title

"태그 파일의 위치를 정한다.
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
