# Vim-Plug setup for Neovim

 - [What is vim-plug?](#what-is-vim-plug)
 - [Important!](#important)
 - [Installing _vim-plug_](#installing-vim-plug)
 - [Setup Neovim](#setup-neovim)

 ## What is Vim-plug?

 You've probably already came across some nvim terms, such as `distributions` and `plugin managers`. Distributions basically setup a bunch of things automatically to you, especially related to plugins and UI. Plugin managers, on the other hand, "just" help you to deal with all that lines required to configure a single extension. In this repo, you'll see a _Neovim_ setup using [**vim-plug**](https://github.com/junegunn/vim-plug), a minimalist Vim plugin manager.

 ## Important!

> [!WARNING] 
> In order to make all the plugins to work propertly, I highly recommend you to have `nvim >= 0.11.0`.
> Besides that, it's importante to install, if you don't get them on your system, `fzf` and `ripgrep`.

### fzf

To install updated _fzf_ on your system, type:

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

Then check it with:

```bash
fzf --version
```

### ripgrep

On your terminal, try:

```bash
sudo apt install ripgrep
```

Check with:

```bash
rg --version
```

## Installing _vim-plug_

vim-plug is not built-in on nvim. Hence, we need to install it. Go to [_vim-plug_](https://github.com/junegunn/vim-plug), and move to `Installation - Neovim` and go ahead according to your SO.

## Setup Neovim

Now it's pretty simple to setup your nvim! First let's make sure you don't have any previous _nvim_ config installed:

```bash
rm -rf ~/.config/nim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

Now clone this repository and move the `nvim` directory to `~/.config`:

```bash
cd ~/; git clone https://github.com/guinoronhaf/vim-plug-config.git
cp -r ~/vim-plug-config/nvim ~/.config
cd ~/.config/nvim && nvim .
```

At this point, your _nvim_ has been installed, but you have to install all of your plugins. So execute `:PlugInstall` and watch all the extensions beeing installed. Once this process is finished, quit nvim with `:qa` and reopen it typing `nvim .`. Done!
