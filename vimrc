" ----------------
" GENERAL SETTINGS
" ----------------
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set showmode

" Tag settings
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent

"
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems

" Numbers
set number
set numberwidth=5

" utf-8 default encoding
set enc=utf-8

" Enable mouse everywhere
set mouse=a

" Hide mouse pointer while typing
set mousehide
set mousemodel=popup

" Code Folding, everything folded by default
set foldmethod=indent
set foldlevel=99
set foldenable

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Use Unix as the standard file type
set ffs=unix,dos,mac

" -------------------------
" VUNDLE PACKAGE MANAGEMENT
" -------------------------
" Declare bundles are handled via Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Define bundles via Github repos
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-afterimage'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/greplace.vim'
Bundle 'vim-scripts/closetag.vim'
Bundle 'vim-scripts/indentpython.vim--nianyang'
Bundle 'vim-scripts/HTML-AutoCloseTag.git'
Bundle 'vim-scripts/tagbar-phpctags'
Bundle 'xenoterracide/html.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'ap/vim-css-color'
Bundle 'kleingeist/django.vim'
Bundle 'quangquach/Color-Sampler-Pack'
Bundle 'quangquach/octave.vim--'
Bundle 'pangloss/vim-javascript'
Bundle 'sjl/gundo.vim'
Bundle 'gregsexton/gitv'
Bundle 'majutsushi/tagbar'
Bundle 'othree/html5.vim'
Bundle 'mileszs/ack.vim'
Bundle 'groenewege/vim-less.git'
Bundle 'nvie/vim-flake8'
Bundle 'briancollins/vim-jst'
Bundle 'nono/vim-handlebars'
Bundle 'digitaltoad/vim-jade'
Bundle 'rodjek/vim-puppet'
Bundle 'sophacles/vim-bundle-mako.git'
Bundle 'Glench/Vim-Jinja2-Syntax.git'
Bundle 'derekwyatt/vim-scala'
Bundle 'Rykka/riv.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jnwhiteh/vim-golang'
Bundle 'kien/ctrlp.vim'
Bundle 'elzr/vim-json'
Bundle 'wavded/vim-stylus'
Bundle 'mustache/vim-mode.git'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'junegunn/goyo.vim'
Bundle 'kovisoft/slimv'
Bundle 'amdt/vim-niji'
Bundle 'guns/vim-clojure-static'

filetype plugin indent on


" ---
" GUI
" ---
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  "set t_Co=256
endif
set guifont=CosmicSansNeueMono:h14

" Color scheme
colorscheme JellyBeans
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Disable the blinking cursor.
set gcr=a:blinkon0

" Highlight current line
au WinEnter * set cursorline
hi CursorLine cterm=None ctermbg=5555E0 guibg=darkblue
set cursorline

" ------------
" KEY BINDINGS
" ------------
" Leader
let mapleader = ","

" ; is an alias for :
nnoremap ; :
" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Disable up/down arrow keys
noremap <up> <nop>
noremap <down> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Switch windows
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" <F1> and <F2> for save in all three modes
noremap <F2> <Esc>:w<CR>
inoremap <F2> <Esc>:w<CR>
nnoremap <F2> <Esc>:w<CR>
vnoremap <F2> <Esc>:w<CR>

noremap  <F1> <Esc>:w<CR>
inoremap <F1> <Esc>:w<CR>
nnoremap <F1> <Esc>:w<CR>
vnoremap <F1> <Esc>:w<CR>

" <leader>dd to delete buffer
noremap <leader>bd <Esc>:bd<CR>
vnoremap <leader>bd <Esc>:bd<CR>

" Toggle pate with <F3>
set pastetoggle=<F3>

" Left/Right arrow keys change buffers in all modes
noremap <Left> <Esc>:bp<CR>
inoremap <Left> <Esc>:bp<CR>
nnoremap <Left> <Esc>:bp<CR>
vnoremap <Left> <Esc>:bp<CR>

noremap <Right> <Esc>:bn<CR>
inoremap <Right> <Esc>:bn<CR>
nnoremap <Right> <Esc>:bn<CR>
vnoremap <Right> <Esc>:bn<CR>

" Fast saving
nmap <leader>w :w!<cr>

" ignore non-editable file
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.bak,*.tgz,*.gz     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*.pyc,*.pyo " Python
set wildignore+=*.class,*.jar " Java
set wildignore+=*.gif,*.png,*.jpg,*.jpeg

" ---------
" UTILITIES
" ---------
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END


" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

" Use Ack instead of Grep when available
if executable("ag")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Protect large files from sourcing and other overhead.
" Files become read only
if !exists("my_auto_commands_loaded")
  let my_auto_commands_loaded = 1
  " Large files are > 10M
  " Set options:
  " eventignore+=FileType (no syntax highlighting etc
  " assumes FileType always on)
  " noswapfile (save copy of file)
  " bufhidden=unload (save memory when other file is viewed)
  " buftype=nowritefile (is read-only)
  " undolevels=-1 (no undo possible)
  let g:LargeFile = 1024 * 1024 * 10
  augroup LargeFile
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
  augroup END
endif


" --------------
" CONFIG PLUGINS
" --------------
" NERDtree on <leader>t
"nnoremap <leader>t :NERDTreeToggle <CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$', '__pycache__$[[dir]]']
nnoremap <leader>t :NERDTreeToggle \| :silent NERDTreeMirror <CR>
nnoremap <silent> <leader>tw :NERDTree $HOME/Projects <CR>
map <F8> :NERDTreeToggle \| :silent NERDTreeMirror<CR>

" Load Powerline
" --------------
let g:Powerline_symbols = 'fancy'


" Define the wildignore from gitignore. Primarily for CommandT
function! WildignoreFromGitignore()
    silent call CD_Git_Root()
    let gitignore = '.gitignore'
    if filereadable(gitignore)
        let igstring = ''
        for oline in readfile(gitignore)
            let line = substitute(oline, '\s|\n|\r', '', "g")
            if line =~ '^#' | con | endif
            if line == '' | con  | endif
            if line =~ '^!' | con  | endif
            if line =~ '/$' | let igstring .= "," . line . "*" | con | endif
            let igstring .= "," . line
        endfor
        let execstring = "set wildignore=".substitute(igstring,'^,','',"g")
        execute execstring
        echo 'Wildignore defined from gitignore in: '.getcwd()
    else
        echo 'Unable to find gitignore'
    endif
endfunction
nnoremap <LEADER>cti :call WildignoreFromGitignore()<cr>
nnoremap <LEADER>cwi :set wildignore=''<cr>:echo 'Wildignore cleared'<cr>

" Sparkup
" -------
augroup sparkup_types
" Remove ALL autocommands of the current group.
  autocmd!
" Add sparkup to new filetypes
  autocmd FileType mustache,php,htmldjango,jinja runtime! ftplugin/html/sparkup.vim
augroup END

" clostag.vim
" ----------
let g:closetag_default_xml=1
let g:closetag_html_style=1

" miniBufExplorer
" --------------
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" gundo
" -----
noremap <F5> :GundoToggle<CR>
inoremap <F5> :GundoToggle<CR>
nnoremap <F5> :GundoToggle<CR>
vnoremap <F5> :GundoToggle<CR>

" tagbar
" ------
nmap <leader>l :TagbarToggle<CR>


" jslint
" ------
let g:JSLintHighlightErrorLine=0
let g:JSLintToggle=0

" riv
" --
let g:riv_default_path='~/.vim/tmp/Riv'
let g:riv_tmp_path='~/.vim/tmp'

" ctrlp
" ----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"let g:ctrlp_resue_window = 1 "'NERD'
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
let g:ctrlp_user_command = 'ag --nogroup --nobreak --noheading --nocolor -g "" %s '

" YouCompleteMe
"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" ------------------------
" CODE SYNTAX HIGHLIGHTING
" ------------------------

" python support
" --------------
" don't highlight exceptions and builtins. I love to override them in local
" scopes and it sucks ass if it's highlighted then. And for exceptions I
" don't really want to have different colors for my own exceptions ;-)
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent colorcolumn=79
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with colorcolumn=79

" ruby support
" ------------
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 colorcolumn=79

" go support
" ----------
autocmd BufNewFile,BufRead *.go setlocal ft=go
autocmd FileType go setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" php support
" -----------
autocmd FileType php setlocal shiftwidth=4 tabstop=8 softtabstop=4 expandtab

" template language support (SGML / XML too)
" ------------------------------------------
" and disable taht stupid html rendering (like making stuff bold etc)

fun! s:SelectHTML()
let n = 1
while n < 50 && n < line("$")
" check for jinja
  if getline(n) =~ '{%\s*\(extends\|block\|macro\|set\|if\|for\|include\|trans\)\>'
    set ft=jinja
    return
  endif
" check for mako
    if getline(n) =~ '<%\(def\|inherit\)'
      set ft=mako
      return
    endif
" check for genshi
    if getline(n) =~ 'xmlns:py\|py:\(match\|for\|if\|def\|strip\|xmlns\)'
      set ft=genshi
      return
    endif
    if getline(n) =~ '{{#\|{{/'
      set ft=handlebars
      return
    endif
    let n = n + 1
  endwhile
" go with html
  set ft=html
endfun

autocmd FileType html,htmldjango,jinja,eruby,mako,xml,xhtml let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinja,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
autocmd FileType html,xhtml,xml,htmldjango,jinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
autocmd BufNewFile,BufRead *.mako setlocal ft=mako
autocmd BufNewFile,BufRead *.tmpl setlocal ft=jinja
autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
autocmd BufNewFile,BufRead *.html,*.htm call s:SelectHTML()
let html_no_rendering=1


" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" GLSL
" ----
autocmd bufnewfile,bufread *.frag,*.fragment,*.vert,*.vertex,*.shader,*.glsl setlocal ft=glsl
autocmd FileType glsl setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" Verilog
" -------
autocmd FileType verilog setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2

" CSS
" ---
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" Java
" ----
autocmd FileType java setlocal shiftwidth=2 tabstop=8 softtabstop=2 expandtab

" rst
" ---
autocmd BufNewFile,BufRead *.txt setlocal ft=rst
autocmd FileType rst setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
\ formatoptions+=nqt textwidth=74

" C#
autocmd FileType cs setlocal tabstop=8 softtabstop=4 shiftwidth=4 expandtab

" C/Obj-C/C++
autocmd FileType c setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab colorcolumn=79
autocmd FileType cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab colorcolumn=79
autocmd FileType objc setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab colorcolumn=79
let c_no_curly_error=1

" Octave/Matlab
autocmd FileType matlab setlocal tabstop=8 softtabstop=2 shiftwidth=2 expandtab

" vim
" ---
autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2

" Javascript
" ----------
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 colorcolumn=79
autocmd BufNewFile,BufRead *.json setlocal ft=json
let javascript_enable_domhtmlcss=1

" CoffeeScript
" ------------
autocmd FileType coffee setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 colorcolumn=79

" D
" -
autocmd FileType d setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" cmake support
" -------------
autocmd BufNewFile,BufRead CMakeLists.txt setlocal ft=cmake

" Erlang support
" --------------
autocmd FileType erlang setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2
autocmd BufNewFile,BufRead rebar.config setlocal ft=erlang

" YAML support
" ------------
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2
autocmd BufNewFile,BufRead *.sls setlocal ft=yaml

" Lua support
" -----------
autocmd FileType lua setlocal shiftwidth=2 tabstop=2 softtabstop=2

" rust
" ----
autocmd FileType rust setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" Markdown files end in .md
" Enable spellchecking for Markdown
" Automatically wrap at 80 characters for Markdown
" ------------------------------------------------
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.md setlocal spell
au BufRead,BufNewFile *.md setlocal textwidth=80

" LESS
" ----
autocmd BufNewFile,BufRead *.less setf less

" HAML coffee
" -----------
au BufRead,BufNewFile *.hamlc set ft=haml

" Hyphen keyword on some format like Lisp, CSS, HTML
"
au FileType lisp,clojure,html,xml,xhtml,haml,eruby,css,scss,sass,javascript,coffee setlocal isk+=-

" Tagbar supports
" -----------
let g:tagbar_phpctags_bin='~/Projects/phpctags/phpctags'


let g:tagbar_type_javascript = {
      \ 'ctagsbin' : '/usr/local/bin/jsctags'
      \ }

let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
    \}

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

" support rspec syntax
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

let g:tagbar_type_css = {
    \ 'ctagstype' : 'Css',
      \ 'kinds' : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
      \ ]
\ }
