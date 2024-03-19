" The commands in this are executed when the GUI is started.
"
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Last change:  2001-08-16 08:43:43 W. Europe Daylight Time
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"             for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"           for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use

set ai                    " always set autoindent on

set nu                    " set line number in front of each line

set backspace=2           " backspacing

"if &term == "aixterm"
if &term == "dtterm"
  set t_kb
  fixdel
endif

"set backup                " keep backup file after written

"set backupdir=$HOME/.backup " directory of backup files

" shell to start with !
set shell=bash

set vb                    " no bell

" set nocindent           " set C style indenting off, I don't write C!

set cmdheight=2           " command line height

set comments=b:#,b:\",n:> " define comma seperated list of comment characters

set nocompatible          " use VIM defaults (much better!)

set cpoptions=ces$        " compatible options

set expandtab             " fill tabs with spaces

set formatoptions=tcrql   " set the options for comment formatting

set ignorecase            " ignore case in search patterns

set joinspaces            " two spaces after "." for join command

set laststatus=2          " occasions to show status line, 2=always.

set magic                 " change special characters used in search patterns

"set mouse=a               " make sure mouse is used in all cases.

"set mousemodel=extend     " set the model of mouse

set ruler                 " ruler display in status line

set shiftwidth=4          " shift width size

set shortmess=o           " overwrite writing message with read so less
                          " returns need to be pressed.

set showmatch             " show matching brackets

set showmode              " show mode at bottom of screen

set smartcase             " ignore ignorecase when pattern contains uppercase

set tabstop=4             " number of space <tab> counts for

set textwidth=0           " max length of line for inserting text

set viminfo='20,\"50      " read/write a .viminfo file, don't store more than
                          " 50 lines of registers

set wildmode=longest,list,full  " Complete longest string, list alternatives,
                                " then complete next full match, cycling back to the
                                " original string.

"set nowrap                " turn wrapping on for display

set winaltkeys=no         " allow any mappings with ALT key.

set wrapmargin=4          " number of characters from right side to begin wrap
                          " Does not apply when textwidth is non-zero.

set wrapscan              " search around end of file

set writebackup           " write a backup when writing over a file

" console size
"set lines=25
"set columns=79

" x standard size
"set lines=38
"set columns=105

" x maximized size
"set lines=51
"set columns=130

set go=mbr
set nowrap

"set tags=$SYMPHONY_HOME/tags

" source c:/vim/gvim58/macros/explorer.vim
 "source ${HOME}/share/vim/comments.vim
" source c:/vim/gvim58/macros/buflist.vim

" programming utilities
" nmap <C-N> <ESC>:bn<CR>
" nmap <C-P> <ESC>:bp<CR>
" checkout
"map ,o :!$ATRIA_HOME/bin/cleartool co -nc %<CR>
" make
"map ,r :wa!<CR>:make RELEASE=1 all<CR>
"map ,d :wa!<CR>:make DEBUG=1 all<CR>
" list errors
"map ,l :cl<CR>
" search & replace
"map ,s :1,$s/
"map ,g :!grep -r "<C-R><C-W>" * --include="*.?xx"<CR>
" cout << _name_ << endl;
map ,v wbywO<ESC>p0icerr << "JDN <ESC>lywA: " << <ESC>pA << endl;<ESC>j0

"map ,p wbywO<ESC>p0iprint STDERR "<ESC>lywA: <ESC>pbi$<ESC>A\\n";<ESC>

"map ,c Ocerr << "Jordi \\n";<ESC>3hi
map ,i :source ~/.vimrc<CR>
"map ,m lbve~
"map ,h wbywoprint STDERR "%<ESC>pbve~A: \\n"; foreach (keys %<ESC>pa){ print "  $_ -> " . $<ESC>pa{$_} . "\\n"; }<ESC>
map ,h wbywoprint STDERR Data::Dumper->Dump([\\\$<ESC>pA],['<ESC>pA']);<ESC>
"map ,H wbywoprint STDERR Data::Dumper->Dump([\\\%<ESC>pA],['<ESC>pA']);<ESC>
map ,x :wa<CR>:!!<CR>
"nmap s :set scb<CR><C-W><C-W>:set scb<CR>  " scroll splitted files simultaneously
"nmap S :set noscb<CR><C-W><C-W>:set scb<CR>

"imap ` <ESC>

" Make command line two lines high
"set ch=2

" Make shift-insert work like in Xterm
"map <S-Insert> <MiddleMouse>
"map! <S-Insert> <MiddleMouse>


" Only do this for Vim version 5.0 and later.
if version >= 500

" I like highlighting strings inside C comments
let c_comment_strings=1

" Switch on syntax highlighting.
syntax on

" Switch on search pattern highlighting.
set hlsearch
set incsearch

set foldmethod=manual

" For Win32 version, have "K" lookup the keyword in a help file
"if has("win32")
"  let winhelpfile='windows.hlp'
"  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
"endif

" Hide the mouse pointer while typing
"set mousehide

"let Tlist_Inc_Winwidth=0
"map <c-w><c-l> :Tlist<cr>

"map <c-w><c-f> :FirstExplorerWindow<cr>
"map <c-w><c-b> :BottomExplorerWindow<cr>
"map <c-w><c-t> :WMToggle<cr>

"set cpoptions-=<
"inoremap # X<BS>#



set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
syntax on

hi Normal               guifg=cyan                      guibg=black
hi Comment      term=bold               ctermfg=DarkCyan                guifg=#80a0ff
hi Constant     term=underline  ctermfg=Magenta         guifg=Magenta
hi Special      term=bold               ctermfg=DarkMagenta     guifg=Red
hi Identifier term=underline    cterm=bold                      ctermfg=Cyan guifg=#40ffff
hi Statement term=bold          ctermfg=Yellow gui=bold guifg=#aa4444
hi PreProc      term=underline  ctermfg=yellow  guifg=#ff80ff
hi Type term=underline          ctermfg=LightGreen      guifg=#60ff60 gui=bold
hi Function     term=bold               ctermfg=White guifg=White
hi Repeat       term=underline  ctermfg=green           guifg=white
hi Operator                             ctermfg=Red                     guifg=Red
hi Ignore                               ctermfg=black           guifg=bg
hi Error        term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow


highlight Conditional     ctermfg=magenta
highlight Normal          ctermfg=grey
highlight Cursor          ctermfg=7
highlight Comment         ctermfg=darkgreen
highlight Constant        ctermfg=darkyellow
highlight Label           ctermfg=magenta
highlight Statement       ctermfg=cyan
highlight cppStatement    ctermfg=7
highlight Identifier      ctermfg=darkcyan
highlight Type            ctermfg=red

hi link String  Constant
hi link Character       Constant
hi link Number  Constant
hi link Boolean Constant
hi link Float           Number
hi link Conditional     Repeat
hi link Label           Statement
hi link Keyword Statement
hi link Exception       Statement
hi link Include PreProc
hi link Define  PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment Special
hi link Debug           Special

highlight perlComment     ctermfg=darkgreen
highlight perlStatement   ctermfg=yellow
highlight perlConditional ctermfg=yellow
highlight perlIdentifier        ctermfg=6
highlight perlSpecial     ctermfg=1
highlight perlType        ctermfg=5
highlight perlOperator    ctermfg=3
highlight perlString      ctermfg=9
highlight perlRepeat      ctermfg=magenta

augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost * if &bin | %!xxd
  au BufReadPost * so ~/share/vim/vim61/xxdbin.vim | set ft=xxdbin | endif
  au BufWritePre * if &bin | %!xxd -r
  au BufWritePre * endif
augroup END

let b:current_syntax = "xxdbin"

endif

let g:sqlplus_userid = "ims_soft_user"
let g:sqlplus_passwd = "nagravision"
let g:sqlplus_db = "IMS45X_DEV.PENELOPE"
"let g:sqlplus_db = "NTLPROD.ORACLUSTER"
let g:sqlplus_common_commands = " set pagesize 10000\n set wrap off\n set linesize 9999\n col type format a20\n col subtype format a20\n col name format a15\n col cust_channel_id format a15\n col dvb_service_id format a15\n col event_ref_translation format a15\n col short_name format a15\n col short_descr format a15\n col descr format a15\n col value format a15\n col actors format a15\n"

au BufRead /tmp/mutt-* set tw=72

