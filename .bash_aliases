# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."


# Easier file & directory listing
alias l='ls -CF'  # directories and files in columns
alias la='ls -A'  # directories and files incl. hidden in columns
alias ll='ls -ahlF'  # everything with extra info as a list
alias lsd='ls -l | grep "^d"'  # only directories as a list
alias ls='ls --color=auto'

# Personal shortcuts
alias v="vim"
alias gpu='aticonfig --pxl | while read SPAM_OUT; do notify-send "$SPAM_OUT"; done'
alias w="/usr/bin/which"
alias r="source ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias gitconfig="vim ~/.gitconfig"
alias tmuxconfig="vim ~/.tmux.conf"
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'
alias subnet='sudo nmap -sP 192.168.1.0/24'
alias h='history'
alias sv='sudo /usr/bin/vim'



# Git related shortcuts
alias g="git"


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias tmuxkillall="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}" # tmux kill all sessions

## work in progress

alias emptydirs="find . -empty -type d | wc -l"
alias currentip="wget -O- checkip.dyndns.org 2>&1 | grep Current"
