imap jk <ESC>
imap kj <ESC>

noremap h i
noremap j h
noremap k j
noremap i k

noremap c; ci
syntax on
set number
set nowrap
" set smartindent
" colorscheme torte

noremap y; yi
noremap vw vwjj

noremap ei 10i
noremap dk 10k

set fileformats=unix
set hlsearch

noremap I 5k
noremap K 5j

vnoremap H I

execute pathogen#infect()
"syntax enable
" filetype plugin indent on


"" Tell vim to remember certain things when we exit
""  '10  :  marks will be remembered for up to 10 previously edited files
""  "100 :  will save up to 100 lines for each register
""  :20  :  up to 20 lines of command-line history will be remembered
""  %    :  saves and restores the buffer list
""  n... :  where to save the viminfo files
""set viminfo='10,\"100,:20,%,n~/.viminfo
"
""Arpeggionoremap <Tab>1 1gt
""Arpeggionoremap <Tab>2 2gt
""Arpeggionoremap <Tab>3 3gt
"
noremap <SPACE>1 1gt
noremap 1<SPACE> 1gt
noremap <SPACE>2 2gt
noremap 2<SPACE> 2gt
noremap <SPACE>3 3gt
noremap 3<SPACE> 3gt
noremap <SPACE>4 4gt
noremap 4<SPACE> 4gt
noremap <SPACE>5 5gt
noremap 5<SPACE> 5gt
noremap <SPACE>6 6gt
noremap 6<SPACE> 6gt
set clipboard=unnamed

vmap <C-c> :w !pbcopy<CR><CR>
" autocmd VimEnter * NERDTree

nmap <S-TAB> <C-W>h
nmap <TAB> <C-W>l

"note: to adjust window size in split mode: ctrl w >, or ctrl w <

autocmd Filetype html,xml,xsl,erb source ~/.vim/scripts/closetag.vim
