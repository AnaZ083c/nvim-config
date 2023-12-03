This repo is my configuration for Neovim

## How to setup
### Install
1. Install neovim:
```shell
sudo apt update && sudo apt upgrade && sudo apt install neovim
```

2. Install [plugin manager](https://github.com/junegunn/vim-plug#neovim): 
```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

3. Install requirements:
```shell
sudo apt install exuberant-ctags nodejs
sudo apt-get install silversearcher-ag
```

3. Download config
```shell
mkdir ~/.config/nvim/ && git clone git@github.com:anazobec/neovim-config.git ~/.config/nvim/ 
```

4. Setup:
```shell
# Start nvim
nvim ~/.config/nvim/init.vim

# Install plugins
:PlugInstall

# Restart nvim
:wq!
nvim ~/.config/nvim/init.vim
:q

# Compile coc.vim
cd ~/.config/nvim/plugged/coc.vim/ && npm ci
```

1. Follow this tutorial: https://www.youtube.com/watch?v=JWReY93Vl6g
2. To enalbe copy-paste using a simple ctrl-shift-v use: `:set paste`
3. Make sure to have `nodejs` and `npm` installed
4. Don't try installing all plugins at once, create a `plugged` folder and then`PlugInstall`
5. You must have `nvim` installed (just follow at least the first half of the tutorial to setup NeoVim)
6. Have fun!
    - TODO:
        - install plugin for Debugging: https://github.com/puremourning/vimspector
        - enable Go language completion in coc plugin
        - install vim cheat sheet plugin (good for not constantly googling)
        - maybe a LLAMA AI plugin
        - Bourne Shell completion
        - Tabs plugin
        - Docker plugin
        - Makefile plugin (?)
        - etc.

