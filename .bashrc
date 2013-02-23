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
export PS1='\[\033[1;36m\]\t ${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u\[\033[m\]@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PATH=${PATH}:${HOME}/bin
export EDITOR=/usr/bin/vim
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
if [ "$?WINDOW" ] ; then
   export HISTFILE=~/.histfile/hist$WINDOW
else
   export HISTFILE=~/.histfile/hist
fi
alias hw="history -w ~/.histfile/last"
alias hr="history -r ~/.histfile/last"
alias ha="history -a ~/.histfile/last"
alias hn="history -n ~/.histfile/last"
alias hc="history -c"

if [[  `uname` =~ "Linux" ]] ; then
   alias ls='ls --color=auto'
   alias ll='ls -alF'
   alias la='ls -A'
   alias l='ls -CF'

   alias grep='grep --color=auto'
   alias fgrep='fgrep --color=auto'
   alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

export INPUTRC=~/.inputrc
cd ~/
set meta-flag on
set input-meta on
set convert-meta off
set output-meta on
bind '"\e[1~": beginning-of-line'
bind '"\e[4~": end-of-line'
bind '"\e[5~": beginning-of-history'
bind '"\e[6~": end-of-history'
bind '"\e[3~": delete-char'
bind '"\e[2~": quoted-insert'
bind '"\e[": backward-word'
bind '"^w": backward-delete-word'
bind '"\x1b\x5b\x41": history-search-backward'
bind '"\x1b\x5b\x42": history-search-forward'

set filec
set autolist                # tab completing
set autologout=0

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
