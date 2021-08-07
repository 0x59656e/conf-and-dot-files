###
 # @Author: Adrian Hu
 # @Date: 2021-06-06 20:08:14
 # @LastEditTime: 2021-08-01 03:11:25
 # @Description: 
### 
###
 # @Author: Adrian Hu
 # @Description: A simple bashrc file with common environment variables, alias and functions.
### 

# k3s
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

# User specific aliases and functions
alias rm='rm -i'
alias cp='rsync -avzhP'
alias mv='mv -i'
alias l='ls -laH'
alias ll='ls -lH'
alias die='shutdown now'
alias md='mkdir'
alias bsrc='source ~/.bashrc'
alias vibash='vim ~/.bashrc'
alias now='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias vi='vim'
alias tnew='tmux new -s '
alias ta='tmux attach -t '
alias tkill='tmux kill-session -t '
alias colors='for i in {0..255}; do  printf "\x1b[38;5;${i}mcolor%-5i\x1b[0m" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done'
alias how='cht.sh'
alias myip='curl myip.ipip.net'
alias clean_branch='git for-each-ref --format '\''%(refname:short)'\'' refs/heads | grep -v master | xargs git branch -D'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Set and Unset Proxy
function p_on(){
    export ALL_PROXY=socks5://127.0.0.1:1086
    echo -e "Proxy On: ${ALL_PROXY}"
}

function p_off(){
    unset ALL_PROXY
    echo -e "Proxy Off"
}
