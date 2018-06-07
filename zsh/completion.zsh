autoload -Uz compinit
compinit

compctl -K man_glob man
# Complete commmands after .
compctl -c .

#colors: magenta, green, blue,cyan, yellow, red
export COLORTERM="yes"
zstyle ':completion:*:approximate:*' max-errors 4

#zstyle ':completion:*:functions' ignored-patterns '_*'
#zstyle ':completion:*' format $'\n%F{yellow}Completing %d%f\n'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' cache-path ~/.zsh/cache

zstyle ':completion:*' accept-exact '*(N)'

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort access
zstyle ':completion:*' list-suffixes true
#zstyle ':completion:*' matcher-list '' '+m:{a-z}={A-Z}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $ZSHCAHCEDIR
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command pids4kill
zstyle ':completion:::::' completer _complete _approximate
zstyle ':completion:*' completer _complete _prefix
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:predict:*' completer _complete # Completion caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSHCAHCEDIR/$HOST # Expand partial paths
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*' squeeze-slashes 'yes' # Include non-hidden directories in globbed file completions
zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~' # Separate matches into groups
zstyle ':completion:*:matches' group 'yes' # Describe each match group.
zstyle ':completion:*:descriptions' format "%B---- %d%b" # Messages/warnings format
zstyle ':completion:*:messages' format '%B%U---- %d%u%b'
zstyle ':completion:*:warnings' format '%B%U---- no match for: %d%u%b' # Describe options in full
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'

#does not belong here

