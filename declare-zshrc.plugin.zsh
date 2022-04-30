# -*- mode: zsh; sh-indentation: 2; indent-tabs-mode: nil; sh-basic-offset: 2; -*-
# vim: ft=zsh sw=2 ts=2 et
#
# Standardized $0 Handling
# https://z-shell.github.io/docs/zsh/Zsh-Plugin-Standard#zero-handling
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Functions Directory
# https://z.digitalclouds.dev/community/zsh_plugin_standard#funtions-directory
if [[ $PMSPEC != *f* ]] {
  fpath+=( "${0:h}/functions" )
}

# Standard Plugins Hash
# https://z.digitalclouds.dev/community/zsh_plugin_standard#standard-plugins-hash
typeset -gA Plugins PluginsCache
Plugins[DECLZSH_REPO_DIR]="${0:h}"
PluginsCache[DECLZSH_CACHE_DIR]="${XDG_CACHE_HOME:-$HOME/.cache}/zi/declare-zshrc"

autoload @declzsh-process-buffer declzsh .declzsh-usage

alias declzsh='noglob declzsh'
