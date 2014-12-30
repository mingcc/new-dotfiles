set encoding=utf-8

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" General 
set bg=dark
set tags=./tags
set mouse=a              
set bs=2                
set wildmode=list:longest " make TAB behave like in a shell
" highlight Pmenu ctermbg=238 gui=bold

" better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed  " Operation such as yy,D and P work with the system clipboard

syntax on
" Rebind <leader> key
let mapleader = ","

" Quicksave command 
noremap <c-z> :update<CR>
vnoremap <c-z> <C-C>:update<CR>
inoremap <C-Z> <C-D>:update<CR>

" Quick quit command
noremap <Leader>e :q<CR> " Quick current window
noremap <Leader>er :q!<CR> 
noremap <Leader>E :qa!<CR>  " Quick all windows

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" don't use tabs but spaces
set tabstop=4
set softtabstop=4     "tabs key indent by four spaces  
set shiftwidth=4
set shiftround
set expandtab         "convert tabs to whitespace
" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv 
vnoremap > >gv
map <Leader>a ggVG  " select all

" filetype
filetype off 
filetype plugin indent on
"filetype plugin on



" Make case search insensitive
set hlsearch 
set incsearch
set ignorecase
set smartcase

" disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" setup Pathogen to manage your plugins
call pathogen#infect()
call pathogen#helptags()



" settings for powerline
" cd ~/.vim/bundle
" git clone https://github.com/Lokaltog/vim-powerline
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_theme = 'solarized256'
set laststatus=2

" settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim
"let g:ctrip_max_height = 30
"Set the directory to store the cache files: 
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_extensions = ['rtscript']



" show line numbers and length
set nu

set t_Co =256
set tw=79 " width of document  (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't actomatically wrap text when typing
set colorcolumn=80



" open $MYVIMRC file
:nnoremap <Leader>ev :vsplit $MYVIMRC<cr>

inoremap jk <esc>




" Show most plugin keybinding
noremap <silent><Leader>? :map <Leader><CR>




" DelimitMate
let delimitMate_expand_cr = 1




" UltiSnips
" =========
set runtimepath+=~/.vim/bundle/UltiSnips
set runtimepath+=~/.vim/ulti_snippets
let g:UltiSnipsSnippetsDir = "~/.vim/ulti_snippets/"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'ulti_snippets']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Fixing the copy & paste madness
" ================================
vmap <C-y> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
imap <C-v> <Esc><C-v>a

let g:SuperTabDefaultCompletionType = "context"

" Syntastic
" =========
let jshint2_save = 1

" Settings for jedi-vim
" =====================
let g:jedi#usages_command = "<leader>n"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>



" Close all folds when opening a new buffer
" zR to open all folds
" autocmd BufRead * setlocal foldmethod=marker
" autocmd BufRead * normal zM


let g:user_emmet_leader_key = '<c-y>'


let g:django_projects = '~/project'
let g:django_activate_nerdtree = 1 
