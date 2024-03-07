set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'matchparenpp'
Plugin 'townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'http://github.com/tomasr/molokai'  " colorscheme
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end() " required
" end of Vundle -------------------------------------
 
" vim 기본 설정 영역
filetype plugin indent on

"NERDTree ON 단축키를 "\nt"로 설정
map nt :NERDTree
let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
let g:ctrlp_custom_ignore = {
\ 'dir': '\.git$\|vendor$',
\ 'file': '\v\.(exe|so|dll)$'
\ }

" colorscheme jellybeans " 컬러 스킴 설정.(plugin 설치 필요)
colorscheme molokai
filetype on "vim filetype on

" Syntax 지원
if has("syntax")
syntax on
endif

set backspace=indent,eol,start " 맥 vi 백스페이스

set encoding=utf-8 " encoding 설정
set fileencodings=utf-8,cp949,default,latin1
set termencoding=utf-8
set number " 좌측 라인 넘버 표시
set numberwidth=6 " 넘버 표시 공간의 너비

set title " 하단 편집 문서의 이름 표시
set ruler " 하단부에 현재 커서의 위치를 표시

set shiftwidth=4 " 들여쓰기 간격
set tabstop=4 " tab 간격

set cindent
set autoindent " 자동 들여쓰기
set smartindent

set hlsearch " 검색 결과 강조
set incsearch " 증가 방향으로 검색
set nowrapscan " 검색 시 파일 끝에서 되돌려 검색하지 않게
set ignorecase " 검색 시 대소문자 구분하지 않음

set nowrap " 자동 줄 바꿈 사용하지 않음

set autowrite " 자동 저장
set autoread

" set paste " 붙여 넣기 시 계단현상 방지
set showmatch " 커서 위치 시 괄호의 끝 혹은 시작을 반전으로 표시

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
let g:NERDTreeGlyphReadOnly = 'RO'
let g:NERDTreeNodeDelimiter = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeDirArrowCollapsible = ' '
let g:NERDTreeDirArrowExpandable = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '

"let g:NERDTreeDirArrowCollapsible = ''
"let g:NERDTreeDirArrowExpandable = ''
set laststatus=2 " turn on bottom bar

set tagbsearch " 태그 데이터 베이스를 이진으로 검사

map <F9>  :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

