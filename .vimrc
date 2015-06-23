if has('gui_running')
    if has('unix')
        set guifont=Monospace\ 10
    elseif has('win32')
        set guifont=Consolas:h11,Courier\ New:h10
    endif
endif

" Automatic reloading of .vimrc
" ==============================
autocmd! bufwritepost .vimrc source %
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python nnoremap <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
autocmd FileType sh,zsh        inoremap <silent> <buffer> <Leader>! #!/bin/<C-R>=&ft<CR>

" General 
" =========
"set bg=dark
set encoding=utf-8
set mouse=a              
set bs=2                
set wildmode=list:longest " make TAB behave like in a shell
set autoread
colorscheme wombat

"original: set grepprg=grep\ -rnH\ --exclude='.*.swp'\ --exclude='*~'\ --exclude=tags
"found : https://github.com/tpope/tpope/blob/master/.vimrc
set grepprg=grep\ -rnH\ --exclude=tags


" better copy & paste
" ====================
set pastetoggle=<F2>
set clipboard=unnamed  " Operation such as yy,D and P work with the system clipboard

syntax on
" Rebind <leader> key
let mapleader = ","

" Quicksave command 
noremap <c-z> :update<CR>
vnoremap <c-z> <C-C>:update<CR>
inoremap <c-z> <C-D>:update<CR>

" Quick quit command
noremap <Leader>e :q<CR> " Quick current window
noremap <Leader>er :q!<CR> 
noremap <Leader>E :qa!<CR>  " Quick all windows


" don't use tabs but spaces
set tabstop=4
set softtabstop=4     "tabs key indent by four spaces  
set shiftwidth=4
set shiftround
set expandtab         "convert tabs to whitespace

" easier moving of code blocks
vnoremap < <gv 
vnoremap > >gv
map <c-a> ggVG  " select all

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
set laststatus=2

" settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim
"let g:ctrip_max_height = 30



" show line numbers and length
set nu
set t_Co =256
set tw=79 " width of document  (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't actomatically wrap text when typing
highlight ColorColumn ctermbg=233
highlight PmenuSel ctermbg=15 guibg=white






" Show most plugin keybinding
noremap <silent><Leader>? :map <Leader><CR>




" DelimitMate
let delimitMate_expand_cr = 1




" UltiSnips
" =========
"let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"



" Syntastic
" =========
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1


" Settings for jedi-vim
" =====================

set completeopt=longest,menuone
let g:jedi#usages_command = "<leader>n"
let g:jedi#popup_select_first = 1





" Close all folds when opening a new buffer
" zR to open all folds
" autocmd BufRead * setlocal foldmethod=marker
" autocmd BufRead * normal zM

" Buffer movement
map <right>  :bnext<cr>
map <left>  :bprevious<cr>




" automatically adding executable bit to files
" =================================================
if has('unix')
    au BufWritePost *.sh silent !chmod +x <afile> 
    au BufWritePost *.py silent !chmod +x <afile> 
endif


let g:SuperTabDefaultCompletionType = "context"


" Movement
" =========
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map gf :edit <cfile><CR>



map <Leader>, <esc>:tabprevious<CR>
map <Leader>. <esc>:tabnext<CR>




" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()



vmap <C-y> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
imap <C-v> <Esc><C-v>a




let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
