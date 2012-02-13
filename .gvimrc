:color blackboard
:set guifont=Monaco:h12

set nobackup
set nowritebackup
set noswapfile

let s:os = system("uname")
if s:os =~ "Darwin"
    let g:Grep_Xargs_Options='-0'
endif

nnoremap <D-g> :Rgrep<CR>
nnoremap <D-W> <C-W>

if has("gui_running")
  set lines=100
  set columns=165
  au VimEnter * NERDTree
  au VimEnter * wincmd p
endif

if has("gui_macvim")
  macmenu File.New\ Tab key=<nop>
  macmenu File.Close\ Window key=<nop>
  macmenu File.Close key=<nop>
endif

nnoremap <D-t> :CommandT<CR>

set autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2

set vb

au BufRead,BufNewFile *.coffee setfiletype coffee
au BufRead,BufNewFile *.handlebars setfiletype mustache
