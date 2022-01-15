ZSH_THEME=agnoster
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE=true

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

plugins=(
	docker
	docker-compose
	zsh-autosuggestions
	web-search
	copydir
	copyfile
	copybuffer
	gradle-completion
	dirhistory
)

alias l='exa -la --time-style=iso --group-directories-first -s=modified -r'
alias ll='exa -l --time-style=iso --group-directories-first -s=modified -r'
alias ltr='exa -laT -L=2 --group-directories-first'
alias grep='rg'
alias find='fzf'
alias zsrc='source ~/.zshrc'
alias zedt='vim ~/.zshrc'
alias bubc='brew upgrade && brew cleanup'
alias buf='brew upgrade --formula'
alias brews='brew list -1'
alias now='date -u +"%Y-%m-%dT%H:%M:%SZ"'

# Set and Unset Proxy
function p_on(){
    export ALL_PROXY=socks5://127.0.0.1:7890
    echo -e "Proxy On: ${ALL_PROXY}"
}

function p_off(){
    unset ALL_PROXY
    echo -e "Proxy Off"
}