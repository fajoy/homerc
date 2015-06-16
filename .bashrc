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
if [ -z "$PS1" ]; then #for scp use.
    return;
fi

export TERM=xterm-256color
export PS1='\[\e[1;36m\]\t!\! \[\e[01;33m\]\u\[\e[m\]@\h\[\e[0m\]:\[\e[01;34m\]\w\[\e[0m\]\$ '
PATH=${PATH}:${HOME}/bin
export EDITOR=/usr/bin/vim

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
test -d ~/.histfile ||mkdir ~/.histfile
alias hw="history -w ~/.histfile/last"
alias ha="history -a ~/.histfile/last"
alias hr="history -r ~/.histfile/last"
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

if [[  `uname` =~ "Darwin" ]] ; then
    #ref http://blog.longwin.com.tw/2006/07/color_ls_in_bash_2006/
    export CLICOLOR="YES"
    export LSCOLORS=ExHxcxdxCxegedhbhghcad
    alias ll='ls -l'
    alias la='ls -A'
    alias l='ls -CF'
fi

if [[  `uname` =~ "FreeBSD" ]] ; then
    export EDITOR=/usr/local/bin/vim
    export CLICOLOR="YES"
    export LSCOLORS=ExHxcxdxCxegedhbhghcad
    alias ll='ls -l'
    alias la='ls -A'
    alias l='ls -CF'
fi

if [[ -z "$PUBLIC_ADDRESS" ]] ;then
    export PUBLIC_ADDRESS="`dig +short myip.opendns.com @resolver1.opendns.com`"
fi

if [[ -x `which curl` ]] ; then
    REQ='curl -o-'
fi

if [[ -x `which wget` ]] ; then
    REQ='wget -qO-'
fi

alias req="$REQ"

set meta-flag on
set input-meta on
set convert-meta off
set output-meta on

set filec
set autolist                # tab completing
set autologout=0

#Format json
alias json="python -m json.tool"
alias vundle_inst="test -e $HOME/.vim/bundle/Vundle.vim&&echo vundle already install.||git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim;vim +PluginInstall +qall"

[[ -s "$HOME/.inputrc" ]] && export INPUTRC="$HOME/.inputrc"

#Load bash_profile
[[ -s "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases"

#Load rvm
alias rvm_inst="gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3;req https://get.rvm.io | bash -s stable;. $HOME/.bashrc"
if [[ -d $HOME/.rvm/bin ]] ; then
    . "$HOME/.rvm/scripts/rvm" 
    export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    echo "Enable rvm `ruby -v`"
fi

#Load virtualenv
alias virtualenv_inst="virtualenv $HOME/.virtualenv;source $HOME/.bashrc"
if [[ -s "$HOME/.virtualenv/bin/activate" ]] ; then
    export VIRTUAL_ENV_DISABLE_PROMPT=1
    . "$HOME/.virtualenv/bin/activate"
    unset VIRTUAL_ENV_DISABLE_PROMPT
    echo "Enable virtualenv `python --version 2>&1`"
fi

#Load nvm
alias nvm_inst="$REQ https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash;source $HOME/.bashrc"
alias iojs_inst="$REQ https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash;nvm install iojs;nvm alias default iojs;source $HOME/.bashrc"
if [[ -s "$HOME/.nvm/nvm.sh" ]] ; then
    export NVM_DIR="$HOME/.nvm"
    . "$NVM_DIR/nvm.sh"  # This loads nvm
    echo "Enable nvm `nvm current`"
fi

if [ -e /usr/local/etc/profile.d/z.sh ] ; then
    . /usr/local/etc/profile.d/z.sh
fi

#Show motd
if [ -n "$SSH_TTY" ] ; then
    test -e /etc/motd && cat /etc/motd
fi

