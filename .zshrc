# Set Code as default editor
export EDITOR=code

# Set up Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up Mise
eval "$(mise activate zsh)"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' %F{3}%b%f'

# Set up the prompt
setopt PROMPT_SUBST
PROMPT='%F{5}%n@%m %F{2}%~%f${vcs_info_msg_0_} %F{1}$%f '

# Aliases
alias dot="cd ~/Projects/bradsimantel/dotfiles"
