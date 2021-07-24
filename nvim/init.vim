source $HOME/.config/nvim/plugins.vim


let mapleader = " "

set autoindent
set expandtab
set shiftround
set smarttab
set tabstop=2
set shiftwidth=2

set hlsearch
set ignorecase
set incsearch
set smartcase

set display+=lastline
set encoding=utf-8
set linebreak
set scrolloff=10
set sidescrolloff=5
syntax enable
set wrap

set laststatus=2
set ruler
set wildmenu
set tabpagemax=50
set cursorline
set number
set relativenumber
set noerrorbells
set visualbell
set mouse=a
set title

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

set autoread
set backspace=indent,eol,start
set backupdir=~/.cache/vim
set confirm
set noswapfile
set hidden
set history=1000
set nomodeline
set termguicolors
set cursorcolumn 

" Let's save undo info!
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile

" let g:sonokai_style = 'default'
let g:lightline = {'colorscheme' : 'quantum'}
set background=dark " dark theme
" set background=light  " light theme
set t_Co=256

colorscheme quantum 

" colorscheme tokyonight 

source $HOME/.config/nvim/coc.vim

" use alt+hjkl to move between split/vsplit panels
tnoremap <leader>wh <C-\><C-n><C-w>h
tnoremap <leader>wj <C-\><C-n><C-w>j
tnoremap <leader>wk <C-\><C-n><C-w>k
tnoremap <leader>wl <C-\><C-n><C-w>l
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l

nnoremap <leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
" nnoremap <leader>fg :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>ff :lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<CR>
" nnoremap <leader>fg :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb :lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<CR>
nnoremap <leader>fh :lua require('telescope.builtin').help_tags()<CR>

" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

nnoremap <C-u> :UndotreeToggle<CR>

:nnoremap <C-e> :CocCommand explorer<CR>

nnoremap <leader>bd :Bdelete<CR>

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
}
EOF
lua <<EOF
require('nvim-biscuits').setup({
  default_config = {
    max_length = 12,
    min_distance = 5,
    prefix_string = " 📎 "
  },
  language_config = {
    html = {
      prefix_string = " 🌐 "
    },
    javascript = {
      prefix_string = " ✨ ",
      max_length = 80
    },
    liquid = {
      prefix_string = " ✨ ",
      max_length = 80
    },
    python = {
      disabled = true
    }
  }
})
EOF


let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

nnoremap <silent> <leader>lg :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

" command! -nargs=0 Prettier :CocCommand prettier.formatFile

nmap <leader>for :CocCommand prettier.formatFile<CR>

nmap <leader>mdp  <Plug>MarkdownPreviewToggle

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" augroup autoindent
"     au!
"     autocmd BufWritePre * :normal migg=G`i
" augroup End

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" nnoremap j jzz
" nnoremap k kzz

" autocmd BufEnter *.liquid :set ft=html
" autocmd BufEnter *.scss.liquid :set ft=scss

nnoremap <silent> K :call CocAction('doHover')<CR>
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

let g:coc_filetype_map = {
      \ 'liquid': 'html',
      \ }


nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>

" let g:mta_filetypes = {
"             \ 'html' : 1,
"             \ 'xhtml' : 1,
"             \ 'xml' : 1,
"             \ 'liquid' : 1,
"             \ 'javascript.jsx' : 1,
"             \ 'javascript.tsx' : 1,
"             \}

imap ii <Esc>



if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


" augroup autoindent
"   au!
"   autocmd BufWritePre * :normal gg=G``
" augroup End

" autocmd FileType * setlocal shiftwidth=2 softtabstop=4 expandtab
