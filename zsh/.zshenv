export LANG='en_US.UTF-8'
# export LC_ALL='en_US.UTF-8'
export LC_COLLATE='C'

export LDFLAGS="-L/opt/homebrew/opt/util-linux/lib"
export CPPFLAGS="-I/opt/homebrew/opt/util-linux/include"

export EDITOR='/usr/local/bin/nvim'
export VISUAL='/usr/local/bin/nvim'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DISPLAY=:0.0

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GOPATH="$XDG_DATA_HOME/go"

export RUSTC_WRAPPER="$CARGO_HOME/bin/sccache"

export RANGER_LOAD_DEFAULT_RC=false
export BAT_THEME='TwoDark'
# export BAT_THEME='Coldark-Cold'
# export BAT_THEME='Coldark-Dark'

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/local/share/zsh-syntax-highlighting/highlighters
export NEOVIDE_MULTIGRID
export NEOVIDE_FRAMELESS

source ~/.config/lf/icons

### PATH ###

## macos path helper
if [ -x /usr/libexec/path_helper ]; then
  eval "$(/usr/libexec/path_helper -s)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/opt/util-linux/bin:/opt/homebrew/opt/util-linux/sbin:$PATH"

# PATH=/opt/local/bin:/opt/local/sbin/opt/local/libexec:"$PATH"

## my paths
PATH="$XDG_DATA_HOME"/flutter/bin:"$XDG_DATA_HOME"/flutter:"$PATH"
PATH="$HOME"/.yarn/bin:"$PATH"
PATH="$HOME"/.local/libexec:"$HOME"/.local/bin:"$CARGO_HOME"/bin:"$RUSTUP_HOME"/bin:"$GOPATH"/bin:"$PATH"

