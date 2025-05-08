# ZSH CONFIGURATION
# Oh My Posh configuration
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/one-thing.omp.json)"
fi

# Integrations
[ -s "/Users/nyomansunima/.bun/_bun" ] && source "/Users/nyomansunima/.bun/_bun"
eval "$(zoxide init zsh)"
source <(kubectl completion zsh)

# Git configuration that allow to automatically add the SSH key
# Only run when the command run is git
function register_git_ssh_key {
  if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)" > /dev/null
  fi
  if ! ssh-add -l | grep -q ~/.ssh/id_github; then
    ssh-add --apple-use-keychain ~/.ssh/id_github > /dev/null
  fi
}

function git {
  register_git_ssh_key
  command git "$@"
}

# Alias configuration
# for commands
alias cd='z'
alias ls='eza --icons --tree --level=1 -l'
alias la='eza --icons --tree --level=1 --all -l'
alias c='clear'
alias h='history'
alias up='brew update && brew upgrade && brew cleanup'
alias t='touch'
alias rm='rm -rf -i'
alias cp='cp -r'
alias mv='mv -i'

# File finder
alias fp="fzf --preview'bat {}'"
alias ff='fzf'

# Tools
alias code='zed'

# for files
alias cat='bat'
alias less='bat'

# for git
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias gco='git checkout'
alias gbr='git branch'
alias glog='git log --oneline --decorate --graph'
alias gmerge='git merge'
alias greset='git reset --hard HEAD'

# For apps & cli alias
alias lgit='lazygit'

# Homebrew
alias bu='brew update'
alias bc='brew cleanup'
alias bs='brew search'
alias br='brew autoremove'
