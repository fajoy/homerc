#
# ~/.bashrc
#

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source "/usr/local/rvm/scripts/rvm"
export TERM=xterm-256color
export PS1='\[\033[1;36m\]\t ${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u\[\033[m\]@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export EDITOR=/usr/bin/vim
PATH=${PATH}:${HOME}/bin

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
bind '"^w":backward-delete-word'
bind '"\x1b\x5b\x41":history-search-backward'
bind '"\x1b\x5b\x42":history-search-forward'
set filec
set autolist                # tab completing
set autologout=0

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
