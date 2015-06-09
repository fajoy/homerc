set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'pangloss/vim-javascript'
Plugin 'editorconfig/editorconfig-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



hi clear
hi Normal       guifg=ivory guibg=Black
hi TabLineFill  guifg=#272d2f guibg=#272d2f gui=None
hi TabLine  guifg=MistyRose3 guibg=#272d2f gui=None
hi TabLineSel   guifg=LightBlue3 guibg=#272d2f gui=None
hi ErrorMsg     gui=NONE guifg=Red guibg=Linen
hi IncSearch    gui=NONE guibg=LightGreen guifg=Black
hi ModeMsg      gui=NONE guifg=fg guibg=bg
hi StatusLine   gui=NONE guifg=LightBlue3 guibg=#272d2f
hi StatusLineNC gui=NONE guifg=MistyRose3 guibg=#272d2f
hi VertSplit    gui=NONE guifg=LightBlue4 guibg=Black
hi Visual       gui=reverse guifg=LightBlue4 guibg=Black
hi VisualNOS    gui=underline guifg=fg guibg=bg
hi DiffText     gui=NONE guifg=Yellow guibg=LightSkyBlue4
hi Cursor       guibg=Lavender guifg=Black
hi lCursor      guibg=Lavender guifg=Black
hi Directory    guifg=LightGreen guibg=bg
hi LineNr       guifg=LightBlue3 guibg=bg
hi MoreMsg      gui=NONE guifg=SeaGreen guibg=bg
hi NonText      gui=NONE guifg=Cyan4 guibg=Black
hi Question     gui=NONE guifg=LimeGreen guibg=bg
hi Search       gui=NONE guifg=SkyBlue4 guibg=Bisque
hi SpecialKey   guifg=Cyan guibg=bg
hi Title        gui=NONE guifg=Yellow2 guibg=bg
hi WarningMsg   guifg=Tomato3 guibg=Black
hi WildMenu     gui=NONE guifg=Black guibg=SkyBlue4
hi Folded       guifg=#f4aba2 guibg=bg
hi FoldColumn   guifg=DarkBlue guibg=Grey
hi DiffAdd      gui=NONE guifg=Blue guibg=LightCyan
hi DiffChange   gui=NONE guifg=white guibg=LightCyan4
hi DiffDelete   gui=None guifg=LightBlue guibg=LightCyan
hi Constant     gui=NONE guifg=MistyRose3 guibg=bg
hi String       gui=NONE guifg=LightBlue3 guibg=bg
hi Special      gui=NONE guifg=GoldenRod guibg=bg
hi Statement    gui=NONE guifg=khaki guibg=bg
hi Operator     gui=NONE guifg=#8673e8 guibg=bg
hi Ignore       gui=NONE guifg=bg guibg=bg
hi ToDo         gui=NONE guifg=DodgerBlue guibg=bg
hi Error        gui=NONE guifg=Red guibg=Linen
hi Comment      gui=NONE guifg=SlateGrey guibg=bg
hi Comment      gui=NONE guifg=#62c600 guibg=bg
hi Identifier   gui=bold guifg=LightBlue4 guibg=bg
hi PreProc      gui=NONE guifg=#ffa0a0 guibg=bg
hi Type         gui=NONE guifg=NavajoWhite guibg=bg
hi Underlined   gui=underline guifg=fg guibg=bg

hi Boolean         ctermfg=LightGreen
hi Character       ctermfg=LightGreen
hi String          ctermfg=LightGreen
hi Number          ctermfg=LightGreen

set cursorline
"hi CursorLine term=underline cterm=underline guibg=#555555
highlight CursorLine cterm=NONE ctermbg=24

"ref http://vim.wikia.com/wiki/Highlight_unwanted_spaces
:highlight Tab ctermbg=237 guibg=lightgreen
:match Tab /\t\+/

set nobackup
set nonumber
set background=dark
syntax on               " syntax highlighting

set expandtab           " enter spaces when tab is pressed
set textwidth=0         " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set backspace=indent,eol,start
set ruler               " show line and column number
set showcmd             " show (partial) command in status lineime.sleep(1)

au BufRead,BufNewFile *.js set expandtab
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab



"ref http://www.rcramer.com/tech/linux/vim_indent.html
":verbose set ai? cin? cink? cino? si? inde? indk?
set noai
set nocin
set nosi 
set inde=
nnoremap <leader><TAB> :set ai! cin! si! <CR>

" new tab
map <C-t><C-t> :tabnew<CR>:match Tab /\t\+/<CR>
" close tab
map <C-t><C-w> :tabclose<CR>

" change tab
map <S-H> gT
map <S-L> gt

" move tab
map <C-t><C-n> :tabn<CR>
map <C-t><C-p> :tabp<CR>

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :echo expand('%:p')<CR>
nnoremap <F4> :marks<CR>
nnoremap <F5> :set expandtab!<CR>

" map Mac OS X Terminal.app default Home and End
map <ESC>[H <Home>
map <ESC>[F <End>
imap <ESC>[H <C-O><Home>
imap <ESC>[F <C-O><End>
cmap <ESC>[H <Home>
cmap <ESC>[F <End>

"enable keypad by PuTTY
inoremap <Esc>Oq 1
inoremap <Esc>Or 2
inoremap <Esc>Os 3
inoremap <Esc>Ot 4
inoremap <Esc>Ou 5
inoremap <Esc>Ov 6
inoremap <Esc>Ow 7
inoremap <Esc>Ox 8
inoremap <Esc>Oy 9
inoremap <Esc>Op 0
inoremap <Esc>On .
inoremap <Esc>OQ /
inoremap <Esc>OR *
inoremap <Esc>Ol +
inoremap <Esc>OS -

map <PageUp> <C-u>
map <PageDown> <C-d>
imap <PageUp> <C-o><C-u>
imap <PageDown> <C-o><C-d>

"alt + up : page up
map [A <C-u>
"alt + down : page down
map [B <C-d>
"alt + right : next word
map [C w
"alt + left : back word
map [D b

function! WinResize()
    let a:cmd=input(':','vertical resize +1')
    execute a:cmd
endfunction
nnoremap <C-W>> :call WinResize()<CR>

function! SetArgs()
    let w:args=input('run args:',getwinvar(winnr(),"args"))
endfunction
function! SetExec()
    let a:exec=getwinvar(winnr(),"exec")
    if a:exec==""
        let w:exec=GetDefaultExec()
    end
    let w:exec=input('run exec:',getwinvar(winnr(),"exec"))
endfunction
function! Realpath(path)
    if a:path[0]=="/"
        return a:path
    else
        return resolve(getcwd()."/".a:path)
    end
endfunction
function! GetDefaultExec()
    let a:f=Realpath(bufname("%"))
    return "test -x ".a:f."&&cd `dirname ".a:f."`&&".a:f
endfunction
function! Run()
    w
    let a:args=getwinvar(winnr(),"args")
    let a:exec=getwinvar(winnr(),"exec")
    if a:exec==""
        let w:exec=GetDefaultExec()
        let a:exec=w:exec
    end
    let a:cmd="!".a:exec." ".a:args
    execute a:cmd
endfunction

nnoremap <LEADER><F9> :call SetExec()<CR>
nnoremap <F9> :call Run()<CR>
nnoremap <LEADER><F10> :call SetArgs()<CR>

map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>:filetype plugin indent on<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>:filetype plugin indent on<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>:filetype plugin indent on<cr>

autocmd BufWritePost *.js execute 'call JsBeautify()'
