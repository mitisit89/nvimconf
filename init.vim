"General_conf
let g:mapleader = "\<Space>"
set nocompatible
filetype indent plugin on
syntax enable
set guicursor=
set nowrap
set encoding=utf-8
set number
set nobackup
set nowritebackup
set splitbelow
set splitright
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent       
set expandtab
set noshowmode
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set noswapfile
"Node Support
let g:node_host_proge=expand("/usr/bin/node")

"Plugins
call plug#begin('~/.config/nvim/autoload/plugged')

	"Airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	"Color theme
	Plug 'doums/darcula'
	"Coc
   Plug 'neoclide/coc.nvim',{'branch':'release'}
	Plug 'ryanoasis/vim-devicons'
   Plug 'honza/vim-snippets'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ayu-theme/ayu-vim'
call plug#end()


"Airline_config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep =  ' '
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = '|'

let g:airline_powerline_fonts=1

let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:airline#extensions#tabline#formatter = 'unique_tail'
"theme_settings
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"Coc-Explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"Keys_binds
nnoremap <M-J>   :resize -2<CR>
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>

" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
inoremap <expr><TAB> pumvisible() ? "\<C-n>":"\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
