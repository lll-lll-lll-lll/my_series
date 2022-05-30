set number
set cursorline
syntax enable
# 変更履歴を保存
if has('persistent_undo')
	let undo_path = expand('~/.vim/undo')
	exe 'set undodir=' .. undo_path
	set undofile
endif

set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab

inoremap <silent> jj <ESC>

