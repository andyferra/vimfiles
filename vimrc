set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

" Bundle 'kien/ctrlp.vim'
" Bundle 'scrooloose/nerdcommenter'
" Bundle 'ervandew/supertab'
" Bundle 'tpope/vim-endwise'
" Bundle 'Raimondi/delimitMate'
" Bundle 'tpope/vim-surround'
" Bundle 'pangloss/vim-javascript'
" Bundle 'scrooloose/nerdtree'
" Bundle 'junegunn/seoul256.vim'
" Bundle 'bling/vim-airline'

" Use system clipboard as default register
set clipboard=unnamed

" Backups
set nobackup
set nowritebackup
colorscheme seoul256

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

let mapleader = "\\"

" Toggle Invisibles
nmap <silent> <leader>i :set list!<CR>

" Opens an edit command with the path of the currently edited file filled in
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Toggle soft-wrapping
nmap <silent> <leader>w :set wrap! linebreak! nolist<CR>

" Toggle Spell-Checking
nmap <silent> <leader>s :set spell!<CR>

" Use very-magic Regex
nnoremap / /\v
vnoremap / /\v

" Soft-wrapped-friendly movement
nnoremap j gj
nnoremap k gk

" NERDCommenter Settings
let NERDSpaceDelims = 1

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp

" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Toggle search highlighting
nnoremap <leader>h :set hlsearch!<CR>

" Enables powerline symbols to display correctly
let g:airline_powerline_fonts = 1
