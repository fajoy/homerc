umask 022
set nobeep
set autolist
set notify
set color
setenv LS_COLORS ':no=00:fi=00:di=01;36:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.c=01;33:*.cpp=01;33:*.MP3=01;44;37:*.mp3=01;44;37:*.pl=01;33:';
setenv CLICOLOR
setenv EDITOR vim 
setenv LANG en_US.UTF-8
setenv LC_CTYPE en_US.UTF-8
setenv LC_ALL en_US.UTF-8
alias vi vim
alias srd screen -RD
setenv PATH ${PATH}:${HOME}/bin
if ($?prompt) then
#  if(! $?WINDOW ) then
    #set prompt="%{^[[1;36m%}%T%{^[[m%} %{^[[1;33m%}%n%{^[[m%}@%{^[[1;37m%}%m %{^[[1;34m%}[%~]%{^[[m%} \n%# "
#    set prompt="%{^[[1;36m%}%T%{^[[m%} %{^[[1;33m%}%n%{^[[m%}@%{^[[1;37m%}%m %{^[[1;34m%}[%~]%{^[[m%} \n%# "
#  else
    #set prompt="%{^[[1;36m%}%t%{^[[m%} %{^[[1;33m%}%n%{^[[m%}@%{^[[1;37m%}%m %{^[[1;34m%}[%~]%{^[[m%} %{^[[1;35m%}[W$WINDOW]%{^[[m%} \n%# "
    set prompt="%{^[[1;36m%}%T%{^[[m%} %{^[[1;33m%}%n%{^[[m%}@%{^[[1;37m%}%m%{^[[1;34m%}:%~%{^[[m%}%{^[[1;35m%}%{^[[m%}%# "
#  endif
endif

if ("$OSTYPE" == "FreeBSD") then
 setenv TERM xterm-color
 alias top top -t
 alias ls ls -F
 alias ll ls -lF
 alias la ls -laFa
 alias lla ls -laFa
else if ("$OSTYPE" == "linux") then
 setenv TERM xterm-256color
 alias ls ls -F --color
 alias ll ls -lF --color
 alias la ls -laFa --color
 alias lla ls -laFa --color
endif
alias rmr rm -r
if ( $?tcsh ) then
bindkey "^W" backward-delete-word
bindkey -k up history-search-backward
bindkey -k down history-search-forward
# bind keypad keys for console, vt100, vt102, xterm
bindkey "\e[1~" beginning-of-line  # Home
bindkey "\e[7~" beginning-of-line  # Home rxvt
bindkey "\e[2~" overwrite-mode     # Ins
bindkey "\e[3~" delete-char        # Delete
bindkey "\e[4~" end-of-line        # End
bindkey "\e[8~" end-of-line        # End rxvt

test -d ~/.histfile || mkdir ~/.histfile
set history = 1000
set savehist = (1000 merge)
#set savehist = 1000
alias hs history -S ~/.histfile/last
alias hm history -M ~/.histfile/last
alias hc history -c
if($?WINDOW ) then
 set histfile = ~/.histfile/hist$WINDOW
else
 set histfile = ~/.histfile/hist
endif
endif


test -f ~/.csh/_cshrc && source ~/.csh/_cshrc

