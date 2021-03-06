let g:plugged_home = '~/.vim/plugged'

" Plugins List
call plug#begin(g:plugged_home)

  " Color Scheme
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'morhetz/gruvbox'

  " Better Visual Guide
  Plug 'Yggdroot/indentLine'

  " Asynchronous Lint Engine
  Plug 'w0rp/ale'

  " Deoplete Python autocompletion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
  Plug 'zchee/deoplete-jedi'

" Keep track of changes control
  Plug 'airblade/vim-gitgutter'

" Display colors
  Plug 'ap/vim-css-color'

" Goyo distraction-free writing
  Plug 'junegunn/goyo.vim'

" Browser preview for Markdown
  Plug 'suan/vim-instant-markdown', {'for': 'markdown'} 

" Pandoc citation and syntax support
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

" Configurations Part

" UI configuration
filetype plugin indent on
let g:deoplete#enable_at_startup = 1
set number
syntax on
syntax enable

" Don't open Markdown preview as start
let g:instant_markdown_autostart = 0

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

" Changes update time
set updatetime=100

" colorscheme
colorscheme gruvbox
set background=dark
