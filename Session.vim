let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)a
inoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)a
inoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()a
inoremap <Plug>ZenCodingSplitJoinTagInsert :call zencoding#splitJoinTag()a
inoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()a
inoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()a
inoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
inoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
inoremap <Plug>ZenCodingBalanceTagOutwardInsert :call zencoding#balanceTag(-1)a
inoremap <Plug>ZenCodingBalanceTagInwardInsert :call zencoding#balanceTag(1)a
inoremap <Plug>ZenCodingExpandWord u:call zencoding#expandAbbr(1)a
inoremap <Plug>ZenCodingExpandAbbr u:call zencoding#expandAbbr(0)a
inoremap <silent> <Plug>ragtagXmlV ="&#".getchar().";"
map! <S-Insert> <MiddleMouse>
nnoremap  
snoremap <silent> 	 i<Right>=TriggerSnippet()
nnoremap <NL> <NL>
nnoremap  
nnoremap  
nnoremap  :bn!
nnoremap  :bp!
snoremap  b<BS>
nmap A <Plug>ZenCodingAnchorizeSummary
nmap a <Plug>ZenCodingAnchorizeURL
nmap k <Plug>ZenCodingRemoveTag
nmap j <Plug>ZenCodingSplitJoinTagNormal
nmap / <Plug>ZenCodingToggleComment
nmap i <Plug>ZenCodingImageSize
nmap N <Plug>ZenCodingPrev
nmap n <Plug>ZenCodingNext
vmap D <Plug>ZenCodingBalanceTagOutwardVisual
nmap D <Plug>ZenCodingBalanceTagOutwardNormal
vmap d <Plug>ZenCodingBalanceTagInwardVisual
nmap d <Plug>ZenCodingBalanceTagInwardNormal
nmap ; <Plug>ZenCodingExpandWord
nmap , <Plug>ZenCodingExpandNormal
vmap , <Plug>ZenCodingExpandVisual
nnoremap  :buffer 
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
vnoremap <silent> r :TCommentRight
vnoremap <silent> i :TCommentInline
nnoremap <silent> r :TCommentRight
onoremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
nnoremap <silent>  :TComment
onoremap <silent>  :TComment
snoremap % b<BS>%
snoremap ' b<BS>'
inoremap ï o
nnoremap E :edit 
nnoremap Q gqap
xmap S <Plug>VSurround
snoremap U b<BS>U
snoremap \ b<BS>\
noremap \d :call ruby_debugger#load_debugger() | call g:RubyDebugger.remove_breakpoints()
noremap \e :call ruby_debugger#load_debugger() | call g:RubyDebugger.exit()
noremap \c :call ruby_debugger#load_debugger() | call g:RubyDebugger.continue()
noremap \n :call ruby_debugger#load_debugger() | call g:RubyDebugger.next()
noremap \f :call ruby_debugger#load_debugger() | call g:RubyDebugger.finish()
noremap \s :call ruby_debugger#load_debugger() | call g:RubyDebugger.step()
noremap \t :call ruby_debugger#load_debugger() | call g:RubyDebugger.open_frames()
noremap \m :call ruby_debugger#load_debugger() | call g:RubyDebugger.open_breakpoints()
noremap \v :call ruby_debugger#load_debugger() | call g:RubyDebugger.open_variables()
noremap \b :call ruby_debugger#load_debugger() | call g:RubyDebugger.toggle_breakpoint()
nmap \ig :IndentGuidesToggle
noremap \_s :TCommentAs =&ft_
noremap \_n :TCommentAs =&ft 
noremap \_a :TCommentAs 
noremap \_b :TCommentBlock
vnoremap <silent> \_r :TCommentRight
nnoremap <silent> \_r :TCommentRight
onoremap <silent> \_r :TCommentRight
vnoremap <silent> \_i :TCommentInline
noremap \_  :TComment 
noremap <silent> \_p vip:TComment
vnoremap <silent> \__ :TCommentMaybeInline
nnoremap <silent> \__ :TComment
onoremap <silent> \__ :TComment
nmap <silent> \lg :LustyBufferGrep
nmap <silent> \lb :LustyBufferExplorer
nmap <silent> \lr :LustyFilesystemExplorerFromHere
nmap <silent> \lf :LustyFilesystemExplorer
map \l :so Session.vim
nnoremap \o :silent !xdg-open =escape("", "#?&;|%")
nmap \w 073lê
nnoremap \J F xi_
nnoremap \j f xi_
map \K :bw!
map \k :call KillBuffer()
map \ :Rlib 
map \ :Rspec 
map \ :Rhelper 
map \ :Rcontroller 
map \ :Rview 
map \ :Rmodel 
map \S :RdbStop
map \L :RdbLog
map \P :RdbCommand p 
map \D :Rdebugger 
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cr <Plug>Coerce
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> gC :TCommentMaybeInline
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
vnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
xmap gS <Plug>VgSurround
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)
nnoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)
nnoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()
nnoremap <Plug>ZenCodingSplitJoinTagNormal :call zencoding#splitJoinTag()
nnoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()
nnoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()
nnoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
nnoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
vnoremap <Plug>ZenCodingBalanceTagOutwardVisual :call zencoding#balanceTag(-2)
nnoremap <Plug>ZenCodingBalanceTagOutwardNormal :call zencoding#balanceTag(-1)
vnoremap <Plug>ZenCodingBalanceTagInwardVisual :call zencoding#balanceTag(2)
nnoremap <Plug>ZenCodingBalanceTagInwardNormal :call zencoding#balanceTag(1)
nnoremap <Plug>ZenCodingExpandWord :call zencoding#expandAbbr(1)
nnoremap <Plug>ZenCodingExpandNormal :call zencoding#expandAbbr(3)
vnoremap <Plug>ZenCodingExpandVisual :call zencoding#expandAbbr(2)
nnoremap <silent> <F11> :call conque_term#exec_file()
nmap <F2> :wa|exe "mksession! " . v:this_session:so ~/vim-sessions/
map <S-Insert> <MiddleMouse>
cnoremap  <Home>
inoremap <silent> o =VST_Ornaments()
cnoremap  <Left>
cnoremap  <Del>
cnoremap  <End>
cnoremap  <Right>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
imap  <Plug>DiscretionaryEnd
cnoremap  <Down>
cnoremap  <Up>
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap & <Plug>ragtagXmlV
imap % <Plug>ragtagUrlV
imap  <Plug>AlwaysEnd
imap & <Plug>ragtagXmlEncode
imap % <Plug>ragtagUrlEncode
imap / </<Plug>ragtagHtmlComplete
imap H <Plug>ragtagHtmlComplete
imap A <Plug>ZenCodingAnchorizeSummary
imap a <Plug>ZenCodingAnchorizeURL
imap k <Plug>ZenCodingRemoveTag
imap j <Plug>ZenCodingSplitJoinTagInsert
imap / <Plug>ZenCodingToggleComment
imap i <Plug>ZenCodingImageSize
imap N <Plug>ZenCodingPrev
imap n <Plug>ZenCodingNext
imap D <Plug>ZenCodingBalanceTagOutwardInsert
imap d <Plug>ZenCodingBalanceTagInwardInsert
imap ; <Plug>ZenCodingExpandWord
imap , <Plug>ZenCodingExpandAbbr
cnoremap f <S-Right>
cnoremap b <S-Left>
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
inoremap <silent>  :TComment
map ì :bn
map ò :redraw! | call MatchOverLength()
nnoremap ê i_
vmap ê gt
omap ê gt
map è :bp
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set comments=s1:/*,mb:*,ex:*/
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Ubuntu\ Mono\ 8,Inconsolata\ Medium\ 9,Consolas\ 8,DejaVu\ Sans\ Mono\ 8
set guioptions=agit
set helplang=pt
set hidden
set history=50
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,-
set laststatus=2
set lazyredraw
set mouse=a
set operatorfunc=tcomment#OperatorLine
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Conque-Shell,~/.vim/bundle/html5.vim,~/.vim/bundle/pyflakes-vim,~/.vim/bundle/snipmate.vim,~/.vim/bundle/syntastic,~/.vim/bundle/vim-abolish,~/.vim/bundle/vim-cucumber,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-indent-guides,~/.vim/bundle/vim-ragtag,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-ruby-debugger,~/.vim/bundle/vim-surround,~/.vim/bundle/xmledit,~/.vim/bundle/zencoding-vim,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/bundle/snipmate.vim/after,~/.vim/after
set scrolloff=10
set shiftround
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set smarttab
set softtabstop=2
set nostartofline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P%#warningmsg#%{SyntasticStatuslineFlag()}%*
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set termencoding=utf-8
set textwidth=79
set visualbell
set wildmenu
set wildmode=list:longest,full
set window=33
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /files/rcabralc/devel/python/rcabralc.net/src/rcabralcnet.theme/rcabralcnet/theme/static/mockup
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 css/decoration.css
silent! argdel *
edit css/decoration.css
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
cnoremap <buffer> <expr>  fugitive#buffer().rev()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'css'
setlocal filetype=css
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'css'
setlocal syntax=css
endif
setlocal tabstop=2
setlocal tags=./tags,./TAGS,tags,TAGS,/files/rcabralc/devel/python/rcabralc.net/src/rcabralcnet.theme/rcabralcnet/theme/static/mockup/.git/tags
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 42 - ((15 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 015l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
