# Dotcfg

It is repo to store my local Dotcfg based on https://www.atlassian.com/git/tutorials/dotfiles

## Usage

```
git init --bare $HOME/.dotcfg     # Initialize a bare repository in the .dotcfg directory
# create alias to manage the Dotcfg (in your .bashrc or .zshrc)
# alias dotcfg='git --git-dir=$HOME/.dotcfg/ --work-tree=$HOME'

dotcfg config --local status.showUntrackedFiles no # Disable showing untracked files in the status output

# now you can use dotcfg as normal git command ,eg:
# dotcfg status
# dotcfg add .bashrc .zshrc .vimrc

# dotcfg remote add origin YOUR REPO URL
# dotcfg push -u origin master 

```

## Submodules

**NOTE**: I am not using submodules anymore as I moved to lazy.vim package manager. But will keep it for future reference

To add submodules go to *~/.local/share/nvim/site/pack/plugins/start* and run
```
dotcfg submodule add YOUR GIT MODULE YOU WANT TO ADD
```

After adding submodule/plugin, don't forget to update HELP:
```
nvim --headless -c 'helptags ALL' -c 'quit'
```

When cloning on other machine, you need to recursive clone the submodules:
```
dotcfg submodule update --init --recursive -f
```

## Nerd Fonts
To install nerd fonts (choose your font):
```
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv
```

Don't forget to configure your terminal to use that font

## Clipboard
When clipboard is not working, saying *no provider*, run:

```
sudo apt-get install xclip
```
