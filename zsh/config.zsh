HISTFILE=~/.zsh/histfile
HISTSIZE=10000
SAVEHIST=10000


#Set the auto completion on
setopt autocd
setopt share_history
setopt completealiases
setopt completeinword
#append the history file with the zsh history
setopt appendhistory
#if not match display an error
setopt nomatch notify

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

#ZSH OPTS
setopt noclobber
setopt extendedglob
setopt auto_resume

setopt correct correctall
setopt autolist
setopt short_loops #for file in *.pdf; lp ${file}
#unset beep
setopt nobeep

#EDITORS
export EDITOR='nvim'
export VISUAL='nvim'

#PAGER
export PAGER='less'
export LESS=-ex3MRXSF
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;30m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export GDK_USE_XFT=1
export QT_XFT=true

# PATH for all sorts

#path
export PATH=$HOME/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=~/altera/13.1/quartus/bin:$PATH                                             

#languages
export GOPATH=~/go   
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export _JAVA_AWT_WM_NONREPARENTING=1
