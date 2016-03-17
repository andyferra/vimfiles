set nocompatible
set shell=/bin/sh
filetype off

" TOOD
" - setup youcompleteme with go, python, and javascript
" - remove supertab
" - setup emmet-vim
" - remove HTML-AutoCloseTag
" - setup vim ragtag for html
" - see if anything else is needed for writing HTML
" - dial in JS workflow
" - dial in python workflow
" - dial in go workflow

" vundle start
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'dag/vim-fish'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'JuliaLang/julia-vim'
Plugin 'mhumeSF/one-dark.vim'
Plugin 'ervandew/supertab'
Plugin 'csexton/trailertrash.vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'mileszs/ack.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-abolish'
Plugin 'mxw/vim-jsx'
call vundle#end()
" vundle end

syntax on
filetype plugin indent on

" Use system clipboard as default register
set clipboard=unnamed

" Backups
set nobackup
set nowritebackup
let g:hybrid_use_iTerm_colors = 1
colorscheme onedark

" UI
set ruler
set number
set numberwidth=6
set splitbelow
set splitright
set cursorline
set laststatus=2

" Encoding
set encoding=utf-8

" Text
set nowrap
set textwidth=0
set nospell

" Invisible Characters
set nolist
set backspace=indent,eol,start
set listchars=tab:▸\ ,eol:¬

" Foldings
set nofoldenable

" Spelling
set spelllang=en_us

" Searching
set incsearch
set hlsearch

" Completion
set completeopt-=preview

" Filesystem
set wildignore+=*/node_modules/**/*


" Filetypes
au BufWrite,BufRead,BufNewFile *.feature    set ft=cucumber
au BufWrite,BufRead,BufNewFile *.haml       set ft=haml
au BufWrite,BufRead,BufNewFile *.irb        set ft=ruby
au BufWrite,BufRead,BufNewFile *.json       set ft=javascript
au BufWrite,BufRead,BufNewFile *.markdown   set ft=markdown
au BufWrite,BufRead,BufNewFile config.ru    set ft=ruby
au BufWrite,BufRead,BufNewFile *.sass       set ft=sass
au BufWrite,BufRead,BufNewFile *.scss       set ft=scss
au BufWrite,BufRead,BufNewFile *.template   set ft=html
au BufWrite,BufRead,BufNewFile *.liquid     set ft=html
au BufWrite,BufRead,BufNewFile *.text       set ft=textile
au BufWrite,BufRead,BufNewFile Gemfile      set ft=ruby
au BufWrite,BufRead,BufNewFile Capfile      set ft=ruby
au BufWrite,BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BufWrite,BufRead,BufNewFile *.txt        set ft=text
au BufWrite,BufRead,BufNewFile *.snippets   set ft=snippet
au BufWrite,BufRead,BufNewFile *.thor       set ft=ruby
au BufWrite,BufRead,BufNewFile *.watchr     set ft=ruby
au BufWrite,BufRead,BufNewFile *.html       set ft=html

au FileType ruby         set ts=2 sw=2 sts=2 expandtab
au FileType python       set ts=2 sw=2 sts=2 expandtab
au FileType yaml         set ts=2 sw=2 sts=2 expandtab
au FileType rdoc         set ts=2 sw=2 sts=2 expandtab
au FileType eruby        set ts=2 sw=2 sts=2 expandtab
au FileType haml         set ts=2 sw=2 sts=2 expandtab
au FileType html         set ts=2 sw=2 sts=2 expandtab
au FileType sass         set ts=2 sw=2 sts=2 expandtab
au FileType html         set ts=2 sw=2 sts=2 expandtab
au FileType css          set ts=2 sw=2 sts=2 expandtab
au FileType markdown     set ts=2 sw=2 sts=2 expandtab
au FileType vim          set ts=2 sw=2 sts=2 expandtab
au FileType javascript   set ts=2 sw=2 sts=2 expandtab
au FileType text         set ts=2 sw=2 sts=2 expandtab
au FileType coffee       set ts=2 sw=2 sts=2 expandtab
au FileType zsh          set ts=2 sw=2 sts=2 noexpandtab
au filetype sh           set ts=2 sw=2 sts=2 noexpandtab
au filetype go           set ts=4 sw=4 sts=4 noexpandtab


" NERDCommenter Settings
let NERDSpaceDelims = 1

" NERDTree Settings
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.swp$']

" Airline Config
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0

" Configure UltiSnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-tab>"


" Mappings
let mapleader = "\\"

" Toggle Invisibles
nmap <silent> <leader>i :set list!<CR>

" Opens an edit command with the path of the currently edited file filled in
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Toggle soft-wrapping
nmap <silent> <leader>w :set wrap! linebreak! nolist<CR>

" Toggle Spell-Checking
nmap <silent> <leader>s :set spell!<CR>

" Use very-magic case-insensitive Regex
nnoremap / /\v\c
vnoremap / /\v\c

" Soft-wrapped-friendly movement
nnoremap j gj
nnoremap k gk

" Strip Trailing Whitespace
nnoremap <leader>t :TrailerTrim<CR>

" Hide Search Highlighting
nnoremap <leader>h :noh<CR>

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp

" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]


" Load local config if it exists
if filereadable(expand('~/.vimrc_local'))
  source ~/.vimrc_local
endif
