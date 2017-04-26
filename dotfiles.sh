#!/usr/bin/env bash

git clone --bare https://github.com/Biddilets/dotfiles.git $HOME/.dotfiles

function gitdot {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

gitdot checkout
gitdot config status.showUntrackedFiles no