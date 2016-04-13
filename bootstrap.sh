#!/bin/sh

git clone --bare "${ORIGIN:?}" "$HOME/.dotfiles"

git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" checkout "${BRANCH:?}
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" config status.showUntrackedFiles no
