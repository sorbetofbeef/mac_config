export LANG='en_US.UTF-8'
# export LC_ALL='en_US.UTF-8'
export LC_COLLATE='C'

# export LDFLAGS="-L/opt/homebrew/opt/util-linux/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/util-linux/include"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib -Wl,-rpath,/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

export CC="/usr/bin/clang"

PKG_CONFIG_PATH="/opt/homebrew/opt/util-linux/lib/pkgconfig:$PKG_CONFIG_PATH"
PKG_CONFIG_PATH="/opt/homebrew/opt/llvm/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH

export GIT_PAGER="/Users/me/.local/share/cargo/bin/delta"

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
# export BAT_THEME='TwoDark'
export BAT_THEME="$BAT_THEME_DARK"
# export BAT_THEME='Coldark-Dark'

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/local/share/zsh-syntax-highlighting/highlighters
export NEOVIDE_MULTIGRID=true
export NEOVIDE_FRAMELESS=true
export FZF_DEFAULT_COMMAND='rg --files --smart-case'
export FZF_DEFAULT_OPTS='-m --height 50% --border'

# YouTube API Key
export YT_API_KEY='AIzaSyDIIu9Bx5jwTDfkmRURZ95yC2FdmEcrQpo'

# Helix
export HELIX_RUNTIME="$HOME/.config/helix/runtime"

# lf icons
source ~/.config/lf/icons

# source /opt/homebrew/Cellar/nvm/0.39.1_1/libexec/nvm.sh

### PATH ###

## macos path helper
if [ -x /usr/libexec/path_helper ]; then
  eval "$(/usr/libexec/path_helper -s)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:/opt/homebrew/opt/util-linux/bin:/opt/homebrew/opt/util-linux/sbin:/opt/homebrew/opt/python@3.10/bin:$PATH"


# PATH=/opt/local/bin:/opt/local/sbin/opt/local/libexec:"$PATH"

## my paths
# PATH="$HOME"/Library/Python/3.8/bin:"$PATH"
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="$XDG_DATA_HOME"/flutter/bin:"$XDG_DATA_HOME"/flutter:"$PATH"
PATH="$HOME"/.yarn/bin:"$PATH"
PATH="$HOME"/.local/libexec:"$HOME"/.local/bin:"$CARGO_HOME"/bin:"$RUSTUP_HOME"/bin:"$GOPATH"/bin:"$PATH"
# PATH="$HOME/Qt/5.15.2/clang_64/bin:$HOME/Qt/5.15.2/clang_64/libexec:$PATH"
PATH="$HOME/Qt/6.3.1/macos/bin:$HOME/Qt/6.3.1/macos/libexec:$PATH"
PATH="/opt/homebrew/opt/llvm/bin:$PATH"
PATH="/opt/homebrew/Cellar/fontforge/20220308_1/bin:$PATH"
PATH="$PATH":"$HOME/.pub-cache/bin"

for file in "$HOME"/.config/environment.d/*.sh; do
  source $file
done
