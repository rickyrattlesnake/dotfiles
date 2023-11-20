function l --wraps='exa -F --icons --group-directories-first --git-ignore' --description 'alias l=exa -F --icons --group-directories-first --git-ignore'
  exa -F --icons --group-directories-first --git-ignore $argv; 
end
