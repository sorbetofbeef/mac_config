HISTFILE=~/.config/zsh/.histfile
HISTSIZE=4096
SAVEHIST=4096
setopt autocd extendedglob notify
setopt COMBINING_CHARS
unsetopt beep
bindkey -v


xdvi() { command xdvi ${*:-*.dvi(om[1])} }
zstyle ':completion:*:*:xdvi:*' menu yes select
zstyle ':completion:*:*:xdvi:*' file-sort time
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/me/.zshrc'
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'
zmodload zsh/complist

fpath=($ZDOTDIR/functions $ZDOTDIR/site_functions /opt/local/share/zsh-completions $fpath)
autoload -Uz promptinit compinit

for func in $ZDOTDIR/functions/*
do
  autoload -Uz "$func"
done

promptinit; compinit -i; aliasinit

source /opt/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /opt/local/share/zsh/zsh-autopair/autopair.zsh

# if [[ -n $KITTY_INSTALLATION_DIR ]]; then
#   export KITTY_SHELL_INTEGRATION="enabled"
#   autoload -Uz -- "$KITTY_INSTALLATION_DIR"/shell-integration/zsh/kitty-integration
#   kitty-integration
#   unfunction kitty-integration
# fi

bindkey -s '^o' 'lfcd\n'  # zsh

source /opt/local/share/nvm/init-nvm.sh
source /Users/me/.config/broot/launcher/bash/br

source <(/Users/me/.local/share/cargo/bin/starship init zsh --print-full-init)

heading
