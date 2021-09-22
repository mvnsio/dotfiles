call plug#begin('~/.vim/plugged')
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'fannheyward/telescope-coc.nvim'

Plug 'morhetz/gruvbox'
Plug 'leafoftree/vim-svelte-plugin'


Plug 'caenrique/nvim-toggle-terminal'

Plug 'lifepillar/vim-solarized8'
Plug 'NLKNguyen/papercolor-theme'

Plug 'phanviet/vim-monokai-pro'

Plug 'andymass/vim-matchup'

Plug 'kristijanhusak/vim-hybrid-material'



Plug 'glepnir/dashboard-nvim'

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'folke/todo-comments.nvim'

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

Plug 'code-biscuits/nvim-biscuits'
" Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-commentary'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }



call plug#end()

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-eslint', 'coc-tsserver', 'coc-snippets', 'coc-julia', 'coc-svelte', 'coc-go', 'coc-explorer', 'coc-pairs']

