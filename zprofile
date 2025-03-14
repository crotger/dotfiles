
eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.bin:$PATH"


# COMPLETION
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

function _venv_dir () {
	VENV_DIR="./venv"
	if [[ ! -d $VENV_DIR ]]; then
		return 2
	fi
	echo -n $VENV_DIR
}

alias activate='source "$(_venv_dir)/bin/activate"'
