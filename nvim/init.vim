" Auto install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'liuchengxu/vista.vim'
Plug 'easymotion/vim-easymotion'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
Plug 'chriskempson/base16-vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'lervag/vimtex'
"Plug 'bentglasstube/vim-bspwm'
"Plug 'tpope/vim-fugitive'
"Plug 'SirVer/ultisnips'
call plug#end()
let base16colorspace=256
set termguicolors
colorscheme base16-eighties
syntax on
let mapleader="\<space>"
set number
set relativenumber
set ignorecase
set autoindent
set smartindent
set showcmd
set showmode
set incsearch
set wrap
set tabstop=4
set shiftwidth=4
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=50
set shortmess+=c
set signcolumn=yes
set clipboard+=unnamed,unnamedplus
filetype plugin indent on

autocmd CursorHold * silent call CocActionAsync('highlight')

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

noremap <leader>c "+

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
	if (index(['vim', 'help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>d :CocList diagnostics<CR>

xmap <leader>f <Plug>(coc-format)
nmap <leader>f <Plug>(coc-format)
nmap <silent> go :Vista finder coc<CR>
nmap <silent> gsb :CocList -I symbols<CR>
nmap <silent> gl :Lines<CR>
nmap <silent> gf :Files<CR>
nmap <silent> gc :Commands<CR>
nmap <leader>a <Plug>(coc-codeaction)
nmap <leader>c :CocCommand<CR>
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}

let g:lodaded_nvimgdb = 1

"let g:coc_snippet_next = '<tab>'

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<C-j>"
"let g:UltiSnipsJumpBackwardTrigger="<C-k>"

noremap j gj
noremap k gk

noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l
noremap <leader><S-l> <C-w>v<C-w>l
noremap <leader><S-j> <C-w>s<C-w>l
noremap <leader>q :q<CR>
noremap <leader>s :w<CR>
