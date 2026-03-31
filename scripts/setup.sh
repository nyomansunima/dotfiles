#!/usr/bin/env zsh

# Variables and configuration env
# color variables using tput
red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
reset=$(tput sgr0)

echo "${green}SETUP.SH >> Running the setup and installations process."
echo "Will install the applications and dependencies.${reset}"

# Install the homebrew
echo "${magenta}Installing Homebrew${reset}"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Check the installation progress
if [ $? -eq 0 ]; then
    echo "${green}Huuray, Homebrew installed successfully.${reset}"
else
    echo "${red}Opps, Failed to install Homebrew.${reset}"
    exit 1
fi

# Install all of the packages and dependencies
# Using Homebrew bundle file
# Ensure run this on the current projects
echo "${magenta}Installing packages and dependencies${reset}"
brew bundle --file=./.Brewfile check || brew bundle --file=./.Brewfile install

# Link the projects and configurations
# using stow config and from this projects
#
# This will remove all of the existing symlinks before creating new ones
echo "${magenta}Linking projects and configurations${reset}"
stow -D -t ~ .
stow -t ~ . --adopt

echo "${green}Now your system is ready for use.${reset}"
echo "${green}SETUP.SH >> Setup and installations process completed.${reset}"
