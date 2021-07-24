call plug#begin('~/.vim/plugged')
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'caenrique/nvim-toggle-terminal'

Plug 'code-biscuits/nvim-biscuits'

Plug 'sainnhe/sonokai'

Plug 'kjssad/quantum.vim'

" Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'

" Plug 'chemzqm/vim-jsx-improve'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'kaicataldo/material.vim', { 'branch': 'main' }


Plug 'itchyny/lightline.vim'

Plug 'ghifarit53/tokyonight-vim'


Plug 'TovarishFin/vim-solidity'


Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'tpope/vim-liquid'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'kdheepak/lazygit.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'dikiaap/minimalist'

Plug 'moll/vim-bbye'

Plug 'mbbill/undotree'

" Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-commentary'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }



call plug#end()

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-eslint', 'coc-tsserver', 'coc-snippets', 'coc-julia', 'coc-svelte', 'coc-go', 'coc-explorer', 'coc-pairs']

