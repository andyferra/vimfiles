set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

" Use system clipboard as default register
set clipboard=unnamed

" Colors
set background=dark
colorscheme Tomorrow-Night-Eighties

" Backups
set nobackup
set nowritebackup

" UI
set ruler
set number
set numberwidth=6
set splitbelow
set splitright
set cursorline
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

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
au BufWrite,BufRead,BufNewFile *.liquid     set ft=html
au BufWrite,BufRead,BufNewFile *.markdown   set ft=markdown
au BufWrite,BufRead,BufNewFile *.ru         set ft=ruby
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
au BufWrite,BufRead,BufNewFile *.as         set ft=actionscript
au BufWrite,BufRead,BufNewFile *.c          set ft=c
au BufWrite,BufRead,BufNewFile *.handlebars set ft=handlebars

au FileType ruby         set ts=2 sw=2 sts=2 expandtab
au FileType yaml         set ts=2 sw=2 sts=2 expandtab
au FileType rdoc         set ts=2 sw=2 sts=2 expandtab
au FileType eruby        set ts=2 sw=2 sts=2 expandtab
au FileType haml         set ts=2 sw=2 sts=2 expandtab
au FileType html         set ts=2 sw=2 sts=2 expandtab
au FileType php          set ts=2 sw=2 sts=2 expandtab
au FileType sass         set ts=2 sw=2 sts=2 expandtab
au FileType scss         set ts=2 sw=2 sts=2 expandtab
au FileType html         set ts=2 sw=2 sts=2 expandtab
au FileType css          set ts=2 sw=2 sts=2 expandtab
au FileType markdown     set ts=2 sw=2 sts=2 expandtab
au FileType vim          set ts=2 sw=2 sts=2 expandtab
au FileType javascript   set ts=2 sw=2 sts=2 expandtab
au FileType handlebars   set ts=2 sw=2 sts=2 expandtab
au FileType text         set ts=2 sw=2 sts=2 expandtab
au FileType snippet      set ts=8 sw=8 sts=8 noexpandtab
au FileType coffee       set ts=2 sw=2 sts=2 expandtab
au FileType cucumber     set ts=2 sw=2 sts=2 expandtab
au FileType zsh          set ts=2 sw=2 sts=2 noexpandtab
au FileType actionscript set ts=8 sw=8 sts=8 noexpandtab
au FileType c            set ts=4 sw=4 sts=4 expandtab
au FileType cpp          set ts=4 sw=4 sts=4 expandtab

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

" Ragtag Settings
let g:ragtag_global_maps = 1 " Enable global mappings