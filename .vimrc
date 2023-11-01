if exists('g:vscode')
    " VSCode extension

    " share clipboard
    set clipboard=unnamedplus

else
    " ordinary Neovim

    " Specify a directory for plugins
    " - For Neovim: stdpath('data') . '/plugged'
    " - Avoid using standard Vim directory names like 'plugin'
    call plug#begin('~/.vim/plugged')

    " Make sure you use single quotes

    " Theme
    Plug 'dracula/vim'

    " File Explorer with Icons
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    " Language Client
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

    " TypeScript Highlighting
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'

    " File Search
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Comment
    Plug 'preservim/nerdcommenter'

    " mini.nvim
    Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }

    " File Explorer
    Plug 'nvim-tree/nvim-web-devicons' " optional
    Plug 'nvim-tree/nvim-tree.lua'

    " Initialize plugin system
    call plug#end()

    set nu rnu
    set autoindent
    set cindent
    set smartindent
    "set visualbell
    set nowrap
    set ruler
    set hlsearch
    filetype plugin on
    filetype indent on
    set shiftwidth=4
    set tabstop=4
    set expandtab
    set backspace=eol,start,indent

    if has("syntax")
     syntax on           " Default to no syntax highlightning
    endif

    " Remap escape
    inoremap jk <Esc>

    " share clipboard
    set clipboard=unnamedplus

    " Enable theming support
    if (has("termguicolors"))
     set termguicolors
    endif

    " Theme
    syntax enable
    colorscheme dracula

    let g:NERDTreeShowHidden = 1
    let g:NERDTreeMinimalUI = 1
    let g:NERDTreeIgnore = []
    let g:NERDTreeStatusline = ''
    " Automaticaly close nvim if NERDTree is only thing left open
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |
    " Toggle
    nnoremap <silent> <C-b> :NERDTreeToggle<CR>

    nnoremap <C-p> :FZF<CR>
    let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}
    " requires silversearcher-ag
    " used to ignore gitignore files
    let $FZF_DEFAULT_COMMAND = 'ag -g ""'

    " open new split panes to right and below
    set splitright
    set splitbelow

    " turn terminal to normal mode with escape
    tnoremap <Esc> <C-\><C-n>

    " use alt+hjkl to move between split/vsplit panels
    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l
    nnoremap <A-h> <C-w>h
    nnoremap <A-j> <C-w>j
    nnoremap <A-k> <C-w>k
    nnoremap <A-l> <C-w>l

    " start terminal in insert mode
    au BufEnter * if &buftype == 'terminal' | :startinsert | endif

    " open terminal on ctrl+;
    " uses zsh instead of bash
    function! OpenTerminal()
      split term://bash
      resize 10
    endfunction
    nnoremap <c-n> :call OpenTerminal()<CR>

    " nerdcommenter
    nnoremap <c-_> :call NERDComment(0,"toggle")<CR>
    vnoremap <c-_> :call NERDComment(0,"toggle")<CR>

endif
