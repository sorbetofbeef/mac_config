function ls --wraps='exa --group-directaries-first --color=always' --wraps='exa --group-directories-first --color=always' --wraps='exa --group-directories-first --color=always --icons' --description 'alias ls=exa --group-directories-first --color=always --icons'
  exa --group-directories-first --color=always --icons $argv; 
end
