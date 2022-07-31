function l --wraps='exa -lAh --sort=ext --group-directories-first --color=always' --wraps='exa -lah --sort=ext --group-directories-first --color=always' --wraps='exa -lah --sort=ext --group-directories-first --color=always --icons' --description 'alias l=exa -lah --sort=ext --group-directories-first --color=always --icons'
  exa -lah --sort=ext --group-directories-first --color=always --icons $argv; 
end
