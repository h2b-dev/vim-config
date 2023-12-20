# vim-config

- use [vim-plug](https://github.com/junegunn/vim-plug)
- use both vim and neovim.
- run `:PlugInstall` in both vim and neovim.

## path of configuration files

**mac**

```sh
~/.config/nvim/init.vim
~/.vmirc
```

**windows**

```sh
~/AppData/Local/nvim/init.vim
~/.vimrc
```

## install vim-plug in mac

**vim**

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

**neovim**

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## scripts
update from local

```sh
chmod +x update-from-local.sh
./update-from-local.sh
```

