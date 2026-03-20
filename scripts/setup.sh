#!/usr/bin/env zsh

# Install the homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install all of the packages and dependencies
# Using Homebrew bundle file
# Ensure run this on the current projects
brew bundle --file=./.Brewfile check || brew bundle --file=./.Brewfile install

# Link the projects and configurations
# using stow config and from this projects
#
# This will remove all of the existing symlinks before creating new ones
stow -D -t ~ .
stow -t ~ . --adopt
