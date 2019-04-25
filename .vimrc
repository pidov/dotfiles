" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Base
"Plug 'scrooloose/nerdtree'

" Programing 
Plug 'nathanaelkane/vim-indent-guides'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'Shougo/vimproc.vim', {'do' : 'make'} " tsuquyomi dependency
Plug 'Quramy/tsuquyomi'

call plug#end()

" Base
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set swapsync=""
set ts=2 sw=2
set number "relativenumber
set cursorline
set conceallevel=1
set scrolloff=10
set termguicolors
"set modifiable

" Theme
colorscheme dracula
hi! link IndentGuidesEven DraculaBgDarker
hi! link IndentGuidesOdd DraculaBgDark

syntax enable

filetype plugin on

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = -25

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
	" Per default, netrw leaves unmodified buffers open. This autocommand
	" deletes netrw's buffer once it's hidden (using ':q', for example)
	autocmd FileType netrw setl bufhidden=delete
augroup END

augroup numbertoggle
	autocmd!
	autocmd VimEnter,BufEnter,FocusGained,InsertLeave,WinEnter * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave * set norelativenumber 
augroup END
