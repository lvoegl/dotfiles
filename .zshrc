autoload -Uz promptinit
promptinit

path+=$HOME/.dotfiles/bin

if [ -d '$HOME/.ghcup' ]; then
	path+=$HOME/.ghcup/bin
fi

setopt histignorealldups sharehistory

bindkey -e
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

alias -g '...'='../../'
alias -g '....'='../../../'
alias -g '.....'='../../../../'
alias -g '......'='../../../../../'

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=$HOME/.zsh_history

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete _ignored _expand_alias

source /usr/share/zplug/init.zsh
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-completions'
zplug 'plugins/git', from:oh-my-zsh
zplug 'plugins/sudo', from:oh-my-zsh
zplug 'plugins/ssh-agent', from:oh-my-zsh
zplug 'plugins/fzf', from:oh-my-zsh
zplug 'plugins/command-not-found', from:oh-my-zsh
zplug 'themes/agnoster', from:oh-my-zsh, as:theme

if ! zplug check --verbose; then
	printf 'Install? [y/N]: '
	if read -q; then
		echo; zplug install
	fi
fi
zplug load

neofetch
