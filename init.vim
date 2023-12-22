if exists('g:vscode')
    " VSCode extension

    " share clipboard
    set clipboard=unnamedplus

else
    " ordinary Neovim

    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc

endif
