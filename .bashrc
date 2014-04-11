# Set the following to make all x terminals have proper PS1 and PS2
# \033[0;30m - Black
# \033[0;31m - Red
# \033[0;32m - Green
# \033[0;33m - Orange
# \033[0;34m - Blue
# \033[0;35m - Cyan
# \033[0;36m - Light Blue
# \033[0;37m - Grey
# \033[0;39m - White

export TERM=xterm-256color
export PS1='\[\e[1;36m\]\t!\! \[\e[01;33m\]\u\[\e[m\]@\h\[\e[0m\]:\[\e[01;34m\]\w\[\e[0m\]\$ '
PATH=${PATH}:${HOME}/bin
export EDITOR=/usr/bin/vim

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
test -d ~/.histfile ||mkdir ~/.histfile
alias hw="history -w ~/.histfile/last"
alias hr="history -r ~/.histfile/last"
alias ha="history -a ~/.histfile/last"
alias hn="history -n ~/.histfile/last"
alias hc="history -c"

if [ "$?WINDOW" ] ; then
   export HISTFILE=~/.histfile/hist$WINDOW
else
   export HISTFILE=~/.histfile/hist
fi

if [[  `uname` =~ "Linux" ]] ; then
   alias ls='ls --color=auto'
   alias ll='ls -alF'
   alias la='ls -A'
   alias l='ls -CF'
   alias grep='grep --color=auto'
fi


if [[  `uname` =~ "FreeBSD" ]] ; then
    export EDITOR=/usr/local/bin/vim
    export CLICOLOR="YES"
    alias ll='ls -l'
    alias la='ls -A'
    alias l='ls -CF'
fi


set meta-flag on
set input-meta on
set convert-meta off
set output-meta on

set filec
set autolist                # tab completing
set autologout=0

[[ -s "$HOME/.inputrc" ]] && export INPUTRC="$HOME/.inputrc"
[[ -s "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases" # Load bash_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.virtaulenv/bin/activate" ]] && . "$HOME/.virtaulenv/bin/activate" # Load virtualenv
[[ -s "$HOME/.nodeenv/bin/activate" ]] && . "$HOME/.nodeenv/bin/activate" # Load nodeenv
if [ -n "$SSH_TTY" ] ; then
echo "SSH_TTY=$SSH_TTY"
cat /etc/motd
fi
