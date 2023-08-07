# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

#starship
eval "$(starship init zsh)"


GITSTATUS_LOG_LEVEL=DEBUG

# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/malamr/.oh-my-zsh"

#Kubectl config
export PATH="${PATH}:${HOME}/.krew/bin"

plugins=(
	git
	zsh-autosuggestions
	vi-mode
	kubectl 
	Kube-ps1
	)

source $ZSH/oh-my-zsh.sh

source $HOME/.config/zsh/.aliases 

eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $HOME/Downloads/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $HOME/.docker/init-zsh.sh || true # Added by Docker Desktop
source $HOME/zsh-tmux-auto-title/zsh-tmux-auto-title.plugin.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
