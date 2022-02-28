set encoding=utf-8
set hidden
set cmdheight=2
set updatetime=300
set nohlsearch
imap jk <Esc>
set scrolloff=8
set number
set incsearch
set relativenumber
set smartindent
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
set colorcolumn=80
set signcolumn=yes



call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'  
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Install fuzzy finder binary
"Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ayu-theme/ayu-vim'

Plug 'alvan/vim-closetag'
Plug 'gruvbox-community/gruvbox'

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'tpope/vim-surround'


call plug#end()

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-styled-components',
    \ 'coc-emmet',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-phpls',
    \ 'coc-python',
    \ 'coc-prettier',
    \ 'coc-diagnostic'
\]

"set termguicolors
"let ayocolor="dark"
colorscheme gruvbox
set background=dark


let mapleader = " "

nnoremap <leader>pv :Vex<CR>

nnoremap <C-p> :GFiles<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd FileType scss setl iskeyword+=@-@

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,jsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \}
let g:closetag_shortcut = '>'
"let g:closetag_close_shortcut = '<leader>>'
"
