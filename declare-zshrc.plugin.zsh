# Handle $0 according to the Zsh Plugin Standard:
# http://z-shell.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

typeset -g DECLZSH_REPO_DIR="${0:h}"
typeset -g DECLZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/declare-zshrc"

autoload @declzsh-process-buffer declzsh .declzsh-usage

alias declzsh='noglob declzsh'
