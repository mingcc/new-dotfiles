# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."


# Easier file & directory listing
alias l='ls -CF'  # directories and files in columns
alias la='ls -A'  # directories and files incl. hidden in columns
alias ll='ls -ahlF'  # everything with extra info as a list
alias lsd='ls -l | grep "^d"'  # only directories as a list

# Personal shortcuts
alias v="vim"
alias gpu='aticonfig --pxl | while read SPAM_OUT; do notify-send "$SPAM_OUT"; done'


# Git related shortcuts
alias g="git"
alias ga="git add -A ."
alias gst="git st"
alias gps="git push"
alias gpl="git pull"
alias gc="git commit"
alias gl="git lg"

# Apt tools related shortcuts
alias s="sudo apt-cache search"


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
