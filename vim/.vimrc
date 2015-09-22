if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  " Required:
  set runtimepath+=/Users/sgilboy/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/sgilboy/.vim/bundle'))

"Let NeoBundle manage NeoBundle
"Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'ervandew/supertab'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'pangloss/vim-javascript'
" You can specify revision/branch/tag
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup, 
" this will conveniently prompt you to install them.
NeoBundleCheck

" End NeoBundle Scripts----------------------------
syntax enable
set background=dark
colorscheme solarized

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NerdTree Settings
map <C-n> :NERDTreeToggle<CR>

" UltiSnip Settings

" General Settings
set tabstop=4
set shiftwidth=4

