colo industry
set number
set smartindent
set ruler
set wildmenu wildmode=list:longest,full
set whichwrap+=h,l,<,>,[,],b,s
set backspace=indent,eol,start
set nostartofline
set virtualedit=block
set showmatch
set title
set cursorline
set laststatus=2
set cmdheight=2
set confirm
set hidden
set autoread
set nobackup
set noswapfile
set hlsearch
set incsearch
set noignorecase
set smartcase
set wrapscan
set clipboard&
set clipboard^=unnamedplus,autoselect
set scrolloff=8
set sidescrolloff=8
set sidescroll=1
set sw=4
set ts=4
set sw=4
set expandtab
set helplang=ja,en
set mouse=a

""dein Scripts-----------------------------
if &compatible
    set nocompatible
endif
"deinに関するファイルを置くディレクトリを指定
let s:deinDir = expand('~/.vim/dein')
"dein.vimまでのパスを指定
let s:deinRepoDir = s:deinDir . '/repos/github.com/Shougo/dein.vim'
"dein.vimが存在しなければ、if文の中身を実行
if &runtimepath !~# 'dein.vim'
    if !isdirectory(s:deinRepoDir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:deinRepoDir
    endif
    execute 'set runtimepath^=' . fnamemodify(s:deinRepoDir, ':p')
endif
"deinの起動
if dein#load_state(s:deinDir)
    call dein#begin(s:deinDir)
    "rcDirはdein.toml, dein_lazy.tomlファイルを置いてある場所を指定している
    let g:rcDir = expand('~/.vim/dein')
    let s:toml = g:rcDir . '/dein.toml'
    "dein_lazy.tomlを使う場合は下の1行をコメント解除する
    let s:lazy_toml = g:rcDir . '/dein_lazy.toml'
    "tomlファイルを読み込む
    call dein#load_toml(s:toml, {'lazy': 0})
    "dein_lazy.tomlを使う場合は、下の1行をコメント解除する
    call dein#load_toml(s:lazy_toml, {'lazy':1})
    "設定の終了
    call dein#end()
    call dein#save_state()
endif
filetype plugin indent on
syntax enable
if dein#check_install()
    call dein#install()
endif
hi Pmenu ctermbg=0 ctermfg=11
hi PmenuSel ctermbg=8 ctermfg=11
"以下、マッピング設定
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sr <C-w>r
nnoremap so <C-w>_<C-w>|
nnoremap s= <C-w>=
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap s+ <C-w>+
nnoremap s- <C-w>-
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap r <C-r>
