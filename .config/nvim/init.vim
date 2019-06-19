" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-surround'

Plug 'scrooloose/syntastic'

Plug 'tomlion/vim-solidity'

Plug 'tpope/vim-fugitive'

Plug 'mxw/vim-jsx'

Plug 'lervag/vimtex'

Plug 'wmvanvliet/vim-ipython'

"Plug 'xuhdev/vim-latex-live-preview'

call plug#end()

" KEYMAPS
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '__pycache__', '__pycache__']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"noremap Ã¸ l
"noremap l k
"noremap k j
"noremap j h

"nnoremap <C-J> <C-W><C-H>
"nnoremap <C-K> <C-W><C-J>
"nnoremap <C-L> <C-W><C-K>
"nnoremap <C-H> <C-W><C-L>

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
"set textwidth=160
setlocal smartindent

autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab


:set number
:set numberwidth=4
:set cpoptions+=n
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NON<Paste>
set scrolloff=5 " Keep 3 lines below and above the cursor
" Store swap files in fixed location, not current directory.
set dir=~/.vimswap/

let @i='i\textit{}€kl  €kl '
let @b='i\textbf{ }€kl€kl  '
let @k='i€kh	\item[] €kd'
let @j='€khi€kb €kd'
"let @a='i\textbf{Article }\textit{\begin{itemize}€kb\item[]€kb€kb\end{itemize}}\textbf{Summary:}€kb€kb}€kb€kb€kb: €kb}€kb\textbf{Discussion:}€ku€ku€ku€ku€ku€ku€ku€kl€kl '

let @p='idef main():iif __name__ == "__main__":main()V€ku<€ku€kui	'

noremap <space>list i\begin{itemize}<Cr>\item  <Cr>\end{itemize}<Esc>k$i
noremap <space>, i<++><Esc>
noremap <space><space> /<++><Cr>"_ca>
noremap <space>end 0f{ya}o<Cr><Esc>0i\end<Esc>pki
noremap <space>gg i<++><Esc>gg
noremap <space>GG i<++><Esc>GG
noremap <space>figure i\begin{figure}<Cr>\includegraphics[width=\textwidth]{}<Cr>\caption{}<Cr>\label{fig:}<Cr>\end{figure}<Esc>k$h
noremap <space>latex i\documentclass{article}<Cr><Cr>% packages<Cr>\usepackage{url}<Cr>\usepackage{hyperref}<Cr>\usepackage{graphicx}<Cr>\usepackage{todonotes}<Cr>\usepackage[backend=biber,style=numeric,sortcites]{biblatex}<Cr>\usepackage{parskip}<Cr>\renewcommand*\contentsname{Table of Contents}<Cr><Cr>% Less used packages<Cr>%\usepackage{rotating}<Cr>%\usepackage{caption}<Cr>%\renewbibmacro{in:}{}<Cr>%\usepackage[margin=1in]{geometry}  <Cr>%\usepackage{listings}<Cr>%\usepackage{tikz}<Cr>%\usetikzlibrary{shapes.geometric, arrows}<Cr>%\tikzstyle{arrow} = [thick,->,>=stealth]<Cr>%\tikzstyle{process} = [rectangle, minimum width=2cm, minimum height=1cm, text centered, draw=black, fill=orange!30]<Cr>%\pagenumbering{gobble}<Cr><Cr>\addbibresource{biblo.bib}<Cr>\begin{document}<Cr><Cr>\title{\vspace{-2cm}Title}<Cr>\author{Kim Aksel Tahuil Borgen}<Cr>\date{\today}<Cr><Cr>\maketitle<Cr><Cr>\section{Section 1}<Cr><Cr><Cr>\nocite{*}<Cr>\printbibliography<Cr>\end{document}<Cr><Esc>

noremap <space>jc :JupyterConnect<Cr>
noremap <space>jf :JupyterRunFile<Cr>
noremap <space>jr :JupyterSendRange<Cr>

noremap <space># 0i#<Esc>
