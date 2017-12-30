set nocompatible
syntax on
" colo bluez
" colo bocau
" colo jellybeans
" colo candycode
" colo janah
colo wal
filetype plugin on
filetype indent on
set autoindent
set shiftwidth=4
set expandtab
set autoread
set number
"set relativenumber
set wildmenu
set hlsearch
set incsearch
set lazyredraw
set showmatch
set matchtime=3
set mat=2
set encoding=utf8
set bg=dark
set linebreak
set clipboard=unnamedplus
set laststatus=0
" set t_Co=256
set t_ut=" "
set ut=250
" set termguicolors
set background=dark
set cmdheight=1
set shortmess=a
set scrolloff=0
set visualbell
set history=1000
set undolevels=10000
" Set vim to save the file on focus out.
au FocusLost * :wa
" Redraw screen every time when focus gained
au FocusGained * :redraw!
" Working with split screen nicely
" Resize Split When the window is resized"
au VimResized * :wincmd =

" Highlight line the cursor is on
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=black guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"set  rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/

set path+=**

"========== SrtNotes ==========
"
"	ctrl-a increases number by 1
"	ctrl-x dicreases number by 1
"
"========== EndNotes ==========


"Enable Pathogen

" execute pathogen#infect()

" Enable Vundle
" Examples on how to use it
"
" Usually from github
" Plugin 'tpope/vim-fugitive'
"
" If it's not on github
" Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'udalov/kotlin-vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-surround'
Plugin 'vimwiki/vimwiki'
Plugin 'ying17zi/vim-live-latex-preview'
Plugin 'file:///home/anthony/Instantly_Better_Vim_2013/plugin/dragvisuals'
Plugin 'junegunn/goyo.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'pangloss/vim-javascript'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'vim-syntastic/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'jacquesbh/vim-showmarks'
Plugin 'majutsushi/tagbar'
Plugin 'gregsexton/MatchTag'


" All of your Plugins must be added before the following line
call vundle#end()

"==============================

" PLUGINS

" YouCompleteMe

" let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" let g:ycm_min_num_of_chars_for_completion = 1

" let g:ycm_server_python_interpreter = '/usr/bin/python2'

" highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

"==============================

" Vimwiki
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
"

"==============================

"NERDTree

let g:NERDTreeChDirMode = 2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$']
"==============================

" Syntastic

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

"==============================

" Vim-Yankstack

call yankstack#setup()
let g:yankstack_yank_keys = ['y', 'd']
let g:yankstack_map_keys = 0
" nmap <Leader>p <Plug>yankstack_substitute_older_paste
" nmap <Leader>P <Plug>yankstack_substitute_newer_paste

"==============================
"
" Airline

let g:airline_powerline_fonts = 1
let g:airline_theme = 'vice'
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:airline#extensions#whitespace#enabled = 0

"==============================

    " This rewires n and N to do the highlighing...
    nnoremap <silent> n   n:call HLNext(0.4)<cr>
    nnoremap <silent> N   N:call HLNext(0.4)<cr>

    " Blink the line containing the match...
    function! HLNext (blinktime)
        set invcursorline
        redraw
        exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
        set invcursorline
        redraw
    endfunction

" Make CTRL-K list diagraphs before each digraph entry

    inoremap <expr> <C-K> ShowDigraphs()

    function! ShowDigraphs ()
        digraphs
        call getchar()
        return "\<C-K>"
    endfunction

"==============================
runtime bundle/dragvisuals/dragvisuals.vim

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1

"==============================
"
" tagbar
 let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits',
        \'i:impls,trait implementations',
    \]
    \}

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
"
"==============================

" Key mapping

let mapleader = ","
let g:mapleader = ","
nnoremap <leader>tn :tnext<cr>
nnoremap <leader>tN :tprev<cr>
nnoremap <leader>tj :tjump<cr>
nmap <leader>tb :TagbarToggle<CR>
noremap <leader>n :NERDTreeToggle .<CR>
noremap <leader>t :NERDTreeFocus<CR>
noremap <silent> <leader>f :FixWhitespace<CR>
nmap <silent> <F2> :set spell!<CR>
noremap <silent> <leader>m :ShowMarksOnce<CR>
nnoremap <leader>cpp :-1read $HOME/Templates/C++/C++_Template.cpp<CR>6j
nnoremap <leader>html :-1read $HOME/Templates/HTML/HTML_Template.html<CR>17j
nnoremap <leader>c :-1read $HOME/Templates/C/C_Template.c<CR>4j
nnoremap <leader>tex :-1read $HOME/Templates/LaTex/LaTex_Template.tex<CR>4j
" Rempas the ctrl-w key to <leader> w
nnoremap <leader>w <C-w>
nnoremap <leader>s :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>q :q<CR>
" Navigate to \"<++>"
inoremap <Tab><Tab> <Esc>/<++><CR>"_c4l
nnoremap nt :tabnew<CR>
inoremap jk <Esc>

" Swap v and CTRL-V
    nnoremap    v   <C-V>
    nnoremap <C-V>     v

    vnoremap    v   <C-V>
    vnoremap <C-V>     v

" Reload vimrc
autocmd bufwritepost .vimrc source $MYVIMRC
"nnoremap <Leader>hl :set cursorline! cursorcolumn!<CR>
nnoremap <Leader>hl :set cursorline!<CR>
" ==============================
"
" .html
autocmd FileType html inoremap <leader>1 <h1></h1><Esc>o <++><Esc>kF>a
autocmd FileType html inoremap <leader>2 <h2></h2><Esc>o <++><Esc>kF>a
autocmd FileType html inoremap <leader>3 <h3></h3><Esc>o <++><Esc>kF>a
autocmd FileType html inoremap <leader>4 <h4></h4><Esc>o <++><Esc>kF>a
autocmd FileType html inoremap <leader>5 <h5></h5><Esc>o <++><Esc>kF>a
autocmd FileType html inoremap <leader>6 <h6></h6><Esc>o <++><Esc>kF>a
autocmd FileType html inoremap <leader>nav <nav><CR><CR><Space><Space><Space><Space><ul><CR><CR><Space><Space><Space><Space><li><++></li><Esc>Y3p2jo<CR><Bs></ul><CR><CR></nav><Esc>7k0/<++><CR>"_c4l
autocmd FileType html inoremap <leader>ul <ul><CR><CR><Space><Space><Space><Space><li><++></li><Esc>Y3p2jo<CR><Bs></ul><Esc>5k0/<++><CR>"_c4l
autocmd FileType html inoremap <leader>a <a href="<++>"><++></a><Esc>o<++><Esc>ki
autocmd FileType html inoremap <leader>p <p></p><Esc>o<++><Esc>kF>a
" END

""".tex
autocmd FileType tex inoremap <leader>par \paragraph{}<Esc>o<Enter><++><Esc>2kf{a
autocmd FileType tex inoremap <leader>fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
autocmd FileType tex inoremap <leader>fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap <leader>exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap <leader>em \emph{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>bf \textbf{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>it \textit{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>ct \textcite{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>cp \parencite{}<++><Esc>T{i
autocmd FileType tex inoremap <leader>glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
autocmd FileType tex inoremap <leader>x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
autocmd FileType tex inoremap <leader>ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap <leader>ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap <leader>li <Enter>\item<Space>
autocmd FileType tex inoremap <leader>ref \ref{}<Space><++><Esc>T{i
autocmd FileType tex inoremap <leader>tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
autocmd FileType tex inoremap <leader>ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
autocmd FileType tex inoremap <leader>can \cand{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap <leader>con \const{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap <leader>v \vio{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap <leader>a \href{}{<++>}<Space><++><Esc>2T{i
autocmd FileType tex inoremap <leader>sc \textsc{}<Space><++><Esc>T{i
autocmd FileType tex inoremap <leader>chap \chapter{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap <leader>sec \section{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap <leader>ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap <leader>sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap <leader>st <Esc>F{i*<Esc>f}i
autocmd FileType tex inoremap <leader>beg \begin{%DELRN%}<Enter><++><Enter>\end{%DELRN%}<Enter><Enter><++><Esc>4kfR:MultipleCursorsFind<Space>%DELRN%<Enter>c
"autocmd FileType tex inoremap ;up \usepackage{}<Esc>i
autocmd FileType tex inoremap <leader>up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex inoremap <leader>pkg <Esc>ggo\usepackage{}<Esc>i
autocmd FileType tex nnoremap <leader>up /usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex nnoremap <leader>np <Esc>ggo\usepackage{}<Esc>i
autocmd FileType tex inoremap <leader>tt \texttt{}<Space><++><Esc>T{i
autocmd FileType tex inoremap <leader>bt {\blindtext}
autocmd FileType tex inoremap <leader>nu $\varnothing$
autocmd FileType tex inoremap <leader>col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
autocmd FileType tex inoremap <leader>rn (\ref{})<++><Esc>F}i
"END

".bib
autocmd FileType bib inoremap <leader>a @article{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>journal<Space>=<Space>"<++>",<Enter><Tab>volume<Space>=<Space>"<++>",<Enter><Tab>pages<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>8kA,<Esc>i
autocmd FileType bib inoremap <leader>b @book{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>publisher<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>6kA,<Esc>i
autocmd FileType bib inoremap <leader>c @incollection{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>booktitle<Space>=<Space>"<++>",<Enter><Tab>editor<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>publisher<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>8kA,<Esc>i
"END
".c

autocmd Filetype c inoremap <leader>f for (int i = 0; i<++>; i<++>)<CR>{<CR>}<Esc>O<Esc>o<Esc>i    <++><Esc>o<Esc>4kFfi

autocmd Filetype c inoremap <leader>w while (<++>)<CR>{<CR>}<Esc>O<Esc>o<Esc>i    <++><Esc>o<Esc>4kFwi

autocmd Filetype c inoremap <leader>if if (<++>)<CR>{<CR>}<Esc>O<Esc>o<Esc>i    <++><Esc>o<Esc>4kFii

"END

"  C/C++ Enhaced
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_concepts_highlight = 1

" Make Sure that Vim returns to the same line when we reopen a file"
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute 'normal! g`"zvzz' |
                \ endif
augroup END

" Commandsk

" ==============================

" Force Saving Files that Require Root Permission

" command! Sudowrite w !sudo tee % > /dev/null

" ==============================
