source $HOME/.config/nvim/plugins.vim


let mapleader = " "

let g:loaded_matchit = 1


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
let g:lightline = {'colorscheme' : 'gruvbox'}
" set background=dark " dark theme
" set background=light  " light theme

" let g:lightline.colorscheme='onehalfdark'

set background=dark
colorscheme gruvbox 

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

" nnoremap <leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string()<CR>
" nnoremap <leader>fg :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>ff :lua require('telescope.builtin').find_files()<CR>
" nnoremap <leader>fg :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fh :lua require('telescope.builtin').help_tags()<CR>



" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

nnoremap <C-u> :UndotreeToggle<CR>

:nnoremap <C-e> :CocCommand explorer<CR>
" nmap <leader>def <Plug>(coc-definition)
" nmap <leader>imp <Plug>(coc-implementation)
" nmap <leader>ref <Plug>(coc-references)
autocmd CursorHold * silent call CocActionAsync('highlight')


nnoremap <leader>bd :Bdelete<CR>


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

nnoremap <leader>ho :call CocAction('doHover')<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

nmap <leader>td :TodoTelescope<CR>


nmap <leader>ref :Telescope coc references<CR>
nmap <leader>def :Telescope coc definitions<CR>
nmap <leader>imp :Telescope coc implementations<CR>
nmap <leader>diag :Telescope coc diagnostics<CR>
nmap <leader>act :Telescope coc code_actions<CR>

" let g:coc_filetype_map = {
"       \ 'liquid': 'html',
"       \ }


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

autocmd FileType * setlocal shiftwidth=2 softtabstop=4 expandtab
vnoremap < <gv
vnoremap > >gv
augroup filetype_jsx
    autocmd!
    autocmd FileType javascript set filetype=javascriptreact
augroup END



lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF


lua require('nvim-biscuits').setup({})

lua <<EOF
require('nvim-biscuits').setup({
  cursor_line_only = true
})
EOF


let g:dashboard_default_executive ='telescope'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'find_file'          : 'SPC f f',
\ 'new_file'           : 'SPC c n',
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f a',
\ 'book_marks'         : 'SPC f b',
\ }

lua <<EOF
require('telescope').load_extension('coc')
require('telescope').setup{
       defaults = {
     layout_strategy = "vertical"
     }
   }
EOF




lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = false,
    },
    ensure_installed = "maintained"
}
EOF
