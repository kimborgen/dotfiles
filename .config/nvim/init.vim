" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-surround'

Plug 'scrooloose/syntastic'

Plug 'tomlion/vim-solidity'

Plug 'tpope/vim-fugitive'

call plug#end()

" KEYMAPS
map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

noremap ø l
noremap l k
noremap k j
noremap j h

nnoremap <C-J> <C-W><C-H>
nnoremap <C-K> <C-W><C-J>
nnoremap <C-L> <C-W><C-K>
nnoremap <C-H> <C-W><C-L>

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set textwidth=160
setlocal smartindent

:set number
:set numberwidth=4
:set cpoptions+=n
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NON<Paste>
set scrolloff=5 " Keep 3 lines below and above the cursor
" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
