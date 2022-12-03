set autoread
set background=light
set backspace=2
set clipboard=unnamedplus
set colorcolumn=+1
set cursorline
set encoding=UTF-8
set expandtab softtabstop=2 shiftwidth=2
"set guifont=Jet\ Brains\ Mono\ Nerd\ Font:h14
set hidden
set history=50
set ignorecase
set iskeyword+=\-
set lazyredraw
set linespace=5
set mouse=a
set nobackup
set noswapfile
set nowritebackup
set nu rnu
"set number relativenumber
set termguicolors
"set textwidth=80
set ttyfast
set t_ZH=^[[3m
set t_ZR=^[[23m

call plug#begin('~/.vim/plugged')
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'bling/vim-bufferline'
Plug 'dense-analysis/ale'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'easymotion/vim-easymotion'
Plug 'folke/tokyonight.nvim'
Plug 'folke/trouble.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'pangloss/vim-javascript'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'slim-template/vim-slim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tiagovla/tokyodark.nvim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/BufOnly.vim'
Plug 'windwp/nvim-autopairs'
call plug#end()

filetype plugin indent on

"COLORSCHEME
"let ayucolor='mirage'
let g:tokyonight_style='storm'
let g:tokyonight_italic_comments = 1
let g:tokyonight_italic_functions = 1
let g:tokyonight_italic_keywords = 1
let g:tokyonight_italic_variables = 1
let g:tokyonight_dark_sidebar = 1
let g:tokyonight_dark_float = 0

" Tokyo Dark Config
let g:tokyodark_transparent_background = 0
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 1
let g:tokyodark_color_gamma = "1.0"

"let ayucolor='light'
"colorscheme pencil
"colorscheme trial
"colorscheme tokyonight-storm
"colorscheme tokyodark
"colorscheme nord
"colorscheme ayu
colorscheme dracula
"

" ALE Setup - standardrb
let g:ale_linters = {'ruby': ['standardrb']}
let g:ale_fixers = {'ruby': ['standardrb']}
let g:ale_fix_on_save = 1
"

map <F2> :set paste<CR>i
map <silent> <F3> :call BufferList()<CR>

" Neovide configuration
"let g:neovide_fullscreen=v:true
"let g:neovide_cursor_vfx_particle_phase=1.75
"let g:neovide_cursor_animation_length=0.15
"let g:neovide_cursor_vfx_mode = 'railgun'
"let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_trail_length=0

let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_statusline = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

hi ColorColumn guibg=#434343 ctermbg=238

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }

" COC Configuration
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json',
                             \ 'coc-tsserver', 'coc-yaml', 'coc-prettier',
                             \ 'coc-tsserver', 'coc-snippets', 'coc-yank',
                             \ 'coc-tabnine']

let g:coc_snippet_next = '<Down>'
let g:coc_snippet_prev = '<Up>'

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Disable plain arrow keys
" Up and Down is used for snippets
imap <Left> <nop>
imap <Right> <nop>
map <Up> <nop>
map <Down> <nop>

" Tags
nmap <Leader>tt :TagbarToggle<CR>

" Easymotion
" <Leader>f{char} to move to {char}
map  <Leader>e <Plug>(easymotion-bd-f)
nmap <Leader>e <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Resize key binding
map <Left> :vertical resize -5<CR>
map <Right> :vertical resize +5<CR>
map <S-C-j> <Plug>(is-scroll-f)
map <S-C-k> <Plug>(is-scroll-b)
nmap <leader>c :noh<CR>
nmap <C-k> [e
nmap <C-j> ]e
nmap <leader>l :bn<CR>
nmap <leader>h :bp<CR>
nmap <silent> <leader>d :GFiles?<CR>

" Formatter
nmap <leader>fmf :CocCommand prettier.formatFile<CR>

" Save when insert mode
map <silent> <leader>s :StripWhitespace<CR><ESC> :w<CR>
nmap <silent> <leader>s :StripWhitespace<CR><ESC> :w<CR>
imap <silent> <leader>s <ESC>:StripWhitespace<CR><ESC> :w<CR>

" Tabs keybinding
nmap <silent> <leader>ta :tabnew<CR>
nmap <silent> <leader>th :tabprevious<CR>
nmap <silent> <leader>tl :tabnext<CR>

" Open coc yank lis
nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move window
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" FZF finder
"nmap <C-p> :Files <CR>
"nmap <leader>f :Rg <CR>
"nmap <leader>b :Buffers <CR>

autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd BufRead,BufNewFile *.es6 setlocal filetype=javascript

au InsertLeave * set nopaste

lua << EOF
local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')
npairs.setup({map_cr=false})

-- skip it, if you use another global object
_G.MUtils= {}

-- old version
-- MUtils.completion_confirm=function()
  -- if vim.fn["coc#pum#visible"]() ~= 0 then
    -- return vim.fn["coc#_select_confirm"]()
  -- else
    -- return npairs.autopairs_cr()
  -- end
-- end

-- new version for custom pum
MUtils.completion_confirm=function()
    if vim.fn["coc#pum#visible"]() ~= 0  then
        return vim.fn["coc#pum#confirm"]()
    else
        return npairs.autopairs_cr()
    end
end

remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
EOF
