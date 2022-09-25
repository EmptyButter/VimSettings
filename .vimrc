set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'preservim/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'ericcurtin/CurtineIncSw.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'matze/vim-move'
Plugin 'neomake/neomake'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'hari-rangarajan/CCTree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use
filetype on

"Automatic reloading of .vimrc                                                                                                                                                                                                                                                
autocmd! bufwritepost .vimrc source %                                              
                                                                                   
" Better copy & paste                                                              
set pastetoggle=<F2>                                                               
set clipboard=unnamed                                                              
                                                                                   
" Mouse and backspace                                                              
""set mouse=a "for some reason mouse doesn't work if this is set                   
set bs=2 "backspace"                                                               
                                                                                   
" Rebind <Leader> key                                                              
let mapleader = ","                                                                
                                                                                   
" Bind nohl                                                                        
" Removes highlight of your last search                                            
noremap <C-n> :nohl<CR>                                                            
vnoremap <C-n> :nohl<CR>                                                           
inoremap <C-n> :nohl<CR>                                                           
                                                                                   
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
"map <c-j> <c-w>j                                                                   
"map <c-k> <c-w>k                                                                   
"map <c-h> <c-w>h                                                                   
"map <c-l> <c-w>l                                                                   
                                                                                
" easier moving between tabs                                                       
map <leader>n <esc>:tabprevious<cr>                                                
map <leader>m <esc>:tabnext<cr>                                                    
"nnoremap <C-Q> :bn<CR> " Tab navigation like Firefox.
                                                                            
" map sort function to a key                                                       
vnoremap <Leader>s :sort<CR>                                                       
                                                                                   
" easier moving of code blocks                                                     
vnoremap < <gv                                                                     
vnoremap > >gv                                                                     
                                                                                   
" Show whitespace                                                                  
" MUST be inserted BEFORE the colorscheme command                                  
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red           
"" au InsertLeave * match ExtraWhitespace /\s\+$/                                  
                                                                                   
" Color scheme                                                                     
colorscheme gruvbox
set background=dark

" Enable syntax highlighting                                                       
" You need to reload this file for the change to apply                             
"filetype off                                                                       
filetype plugin indent on                                                          
syntax on                                                                          
                                                                                   
" Showing line numbers and length                                                  
set number  " show line numbers                                                    
set tw=79  " width of document (used by gd)                                        
set nowrap  " don't automatically wrap on load                                     
set fo-=t  " don't automatically wrap text when typing                             
set colorcolumn=80                                                                 
"highlight ColorColumn ctermbg=7 guibg=lightgrey                                  
                                                                                   
" easier formatting of paragraphs                                                  
vmap Q gq
nmap Q gqap                                                                     
                                                                                
" Useful settings                                                               
set history=700                                                                 
set undolevels=700                                                              
set tabstop=4                                                                   
set softtabstop=4                                                               
set shiftwidth=4                                                                
set shiftround                                                                  
set expandtab                                                                   
set cursorline                                                                  
set scrolloff=10                                                                
set visualbell
set path+=$PWD/** " Make gf work
set foldmethod=indent
set foldlevel=99

" Auto completion menu after pressing TAB                                       
set wildmenu                                                                    
set wildmode=list:longest "Make wildmenu behave like similar to Bash completion 
                                                                                
" Make search case insensitive                                                  
set hlsearch                                                                    
set incsearch                                                                   
set ignorecase                                                                  
set smartcase                                                                   
                                                                                
" Show more info                                                                
set showcmd                                                                     
set showmode                                                                    
set showmatch                                                                   
                                                                                
" Disable stupid backup and swap files                                          
set nobackup                                                                    
set nowritebackup                                                               
set noswapfile

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Set encoding scheme
set encoding=UTF-8

" turn relative line numbers on
:set relativenumber
:set rnu

"
" Autopairs specific settings
"
let g:AutoPairsShortcutToggle = '<C-t>'

"
" NERDTree specific settings
"
let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

"
" Tagbar specific settings
" 
let g:tagbar_autofocus = 1 "Focus the panel when opening it
let g:tagbar_autoshowtag = 1 " Highlight the active tag
let g:tagbar_position = 'botright vertical' " Make panel vertical and place on the right
nmap <F8> :TagbarToggle<CR> " Mapping to open and close the panel

"
" CtrlSF specific settings
"
let g:ctrlsf_backend = 'ack' " Use the ack tool as the backend
let g:ctrlsf_auto_close = { "normal":0, "compact":0 } " Auto close the results panel when opening a file
let g:ctrlsf_auto_focus = { "at":"start" } " Immediately switch focus to the search window
let g:ctrlsf_auto_preview = 0 " Don't open the preview window automatically
let g:ctrlsf_case_sensitive = 'smart' " Use the smart case sensitivity search scheme
let g:ctrlsf_default_view = 'normal' " Normal mode, not compact mode
let g:ctrlsf_regex_pattern = 0 " Use absoulte search by default
let g:ctrlsf_position = 'right' " Position of the search window
let g:ctrlsf_winsize = '45%' " Width or height of search window
let g:ctrlsf_default_root = 'cwd' " Search from the current working directory
"let g:ctrlsf_default_root = 'project'
"let g:ctrlsf_regex_pattern = 1
" (Ctrl+F) Open search prompt (Normal Mode)
nmap <C-F>f <Plug>CtrlSFPrompt
" (Ctrl-F + f) Open search prompt with selection (Visual Mode)
xmap <C-F>f <Plug>CtrlSFVwordPath
" (Ctrl-F + F) Perform search with selection (Visual Mode)
xmap <C-F>F <Plug>CtrlSFVwordExec
" (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
" (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-F>n <Plug>CtrlSFCwordPath
" (Ctrl-F + o )Open CtrlSF window (Normal Mode)
nnoremap <C-F>o :CtrlSFOpen<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

"
" Move specific settings
"
let g:move_key_modifier = 'C'
let g:move_key_modifier_visualmdoe = 'A'

"
" ctags specific settings
"
map <C-\> :vsp <CR><C-W>l:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <F5> :call CurtineIncSw()<CR>

"
"Neomake
"
call neomake#configure#automake('nrwi', 500)

"
" Airline specific settings
"
let g:airline#extensions#tabline#enabled = 1


