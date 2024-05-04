#!/bin/bash

GITHUB_USER="egaebel"
CUR_USER="$USER"

DOTFILES="dotfiles"
DOTFILES_REPO_URL="https://github.com/$GITHUB_USER/$DOTFILES"

set +e

cd "$HOME"
sudo apt install vim zsh tmux curl git
sudo chsh -s $(which zsh) "$CUR_USER"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone "$DOTFILES_REPO_URL" || true
cp "$DOTFILES"/.aliases "$DOTFILES"/.bash_aliases "$DOTFILES"/.fzf.zsh "$DOTFILES"/.tmux.conf "$DOTFILES"/.vimrc "$DOTFILES"/.zshrc "$HOME"
cp "$DOTFILES"/egaebel-2.zsh-theme "$HOME"/.oh-my-zsh/themes/
