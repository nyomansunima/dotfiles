# ============== ZSH CONFIGURATION =================== #
# Integrations & completion
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/one-thing.omp.json)"
fi
eval "$(zoxide init zsh)"

# Automatically run agent and add the SSH keys
# TODO: Register all of your keys
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  eval "$(ssh-agent -s -q)" > /dev/null
fi
if ! ssh-add -l > /dev/null; then
  ssh-add -q --apple-use-keychain ~/.ssh/id_github > /dev/null
fi

# Alias configuration
# Commands
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

# Files
alias fp="fzf --preview'bat {}'"
alias ff='fzf'
alias cat='bat'
alias less='bat'

# Git
alias g='git'
alias gcl='git clone'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias gco='git checkout'
alias gbr='git branch'
alias glog='git log --oneline --decorate --graph'
alias gmer='git merge'
alias gres='git reset --hard HEAD'

# CLIs
alias lgit='lazygit'
alias ldoc='lazydocker'

# Homebrew
alias bw='brew'
alias bwup='brew update'
alias bwc='brew cleanup'
alias bws='brew search'
alias bwr='brew autoremove'
alias bwi='brew install'
alias bwu='brew uninstall'
alias bwbi='brew bundle install'
alias bwbc='brew bundle check'
alias bwl='brew list'

# Bun
alias br='bun run'
alias bi='bun install'
alias ba='bun add'
alias brm='bun remove'
alias bu='bun update'
