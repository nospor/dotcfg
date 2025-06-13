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

## SUBMODULES

To add submodules go to *~/.local/share/nvim/site/pack/plugins/start* and run
```
dotcfg submodule add YOUR GIT MODULE YOU WANT TO ADD
```

When cloning on other machine, you need to recursive clone the submodules:
```
dotcfg submodule update --init --recursive -f
```
