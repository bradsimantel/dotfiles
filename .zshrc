# Set Helix as default editor
export EDITOR=hx

# Configure NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Configure rbenv
eval "$(rbenv init - zsh)"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' %F{3}%b%f'

# Set up the prompt
setopt PROMPT_SUBST
PROMPT='%F{5}%n@%m %F{2}%~%f${vcs_info_msg_0_} %F{1}$%f '

# Set up Yazi
yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Aliases
alias dot="cd ~/Projects/bradsimantel/dotfiles"
alias lg="lazygit"

# New Relic
vlt() { newrelic-vault us login -method=oidc }
