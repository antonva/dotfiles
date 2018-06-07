. ~/.zsh/colors.zsh

setopt prompt_subst

#PROMPT="
#${fg_lgreen}%n@${at_underl}%m${at_underloff}${fg_white}[${fg_cyan}%~${fg_white}]
#[${fg_green}%T${fg_white}]:${at_normal}"
#PS1=$'%F{def}%(?..%B%K{red}[%?]%K{def}%b )%(1j.%b%K{yel}%F{bla}%jJ%F{def}%K{def} .)%F{white}%B%*%b %F{m}%m:%F{white}%~ %(!.#.>) %F{def}'
#source ~/.zsh/git-prompt/zsh-git-prompt/zshrc.sh

precmd() {
  RPROMPT="${fg_green}<${fg_white}"
}
zle-keymap-select() {
  RPROMPT="${fg_green}<${fg_white}"
  [[ $KEYMAP = vicmd ]] && RPROMPT="${fg_purple}^${fg_white}"
  () { return $__prompt_status }
  zle reset-prompt
}

zle-line-init() {
  typeset -g __prompt_status="$?"
}
zle -N zle-keymap-select
zle -N zle-line-init

PS1=' ${fg_lcyan}%~ ${fg_lgreen}> ${fg_white}'

#PROMPT='%B%m%~%b$(git_super_status) %# '
#prompt walters
#prompt elite2
#prompt bigfade
#prompt adam2

#zle -N zle-keymap-select
#zle -N zle-line-init
#zle -N zle-line-finish
