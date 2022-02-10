# Handle $0 according to the Zsh Plugin Standard:
# https://z-shell.github.io/docs/zsh/Zsh-Plugin-Standard#zero-handling
0="${${ZERO:-${0:#$ZSH_ARGZ#zero-handlingERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

typeset -g DECLZSH_REPO_DIR="${0:h}"
typeset -g DECLZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/declare-zshrc"

autoload @declzsh-process-buffer declzsh .declzsh-usage

alias declzsh='noglob declzsh'
