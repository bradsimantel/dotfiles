# Configure NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set FZF to respect gitignore by piping through FD
export FZF_DEFAULT_COMMAND='fd --type file'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' %F{3}%b%f'
 
# Set up the prompt
setopt PROMPT_SUBST
PROMPT='%F{5}%n@%m%f %F{2}%~%f${vcs_info_msg_0_} %F{1}$%f '

# Add alias to undo last commit
alias oops='git reset --soft HEAD~1'
