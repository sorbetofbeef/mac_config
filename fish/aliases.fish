#!/opt/local/bin/fish

alias -s \
  _='sudo ' \
  q='exit' \
  c='clear' \
  e="$EDITOR"\
  f="lfcd" \
  s="kitty +kitten ssh" \
  ls='exa --group-directories-first --icons --sort Extension --color=always' \
  l='exa --group-directories-first --icons --color=always -lah --sort Extension --git' \
  m='mpv --ytdl $(pbpaste)' \
  yt='yt-dlp $(pbpaste)'

