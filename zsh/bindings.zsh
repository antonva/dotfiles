#vi mode
typeset -A key
bindkey "${terminfo[khome]}" beginning-of-line 
bindkey -v

bindkey '\e[7~' beginning-of-somewhere  # home
bindkey '\e[8~' end-of-somewhere        # end
bindkey '\e[A'  up-line-or-search       # cursor up
bindkey '\e[B'  down-line-or-search     # <ESC>-

bindkey "^P" vi-up-line-or-history

bindkey "^N" vi-down-line-or-history
# ctrl-p ctrl-n history navigation
bindkey '^P' up-history
bindkey '^N' down-history
#
# # backspace and ^h working even after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
#
# # ctrl-w removed word backwards
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward


bindkey '^[[2~' beep                   # Insert
bindkey '^[[3~' delete-char            # Del
bindkey '^[[5~' vi-backward-blank-word # Page Up
bindkey '^[[6~' vi-forward-blank-word  # Page Down
bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'g~' vi-oper-swap-case
bindkey -a G end-of-buffer-or-history
bindkey -a u undo
bindkey -a '^R' redo
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^f' edit-command-line
export KEYTIMEOUT=1

