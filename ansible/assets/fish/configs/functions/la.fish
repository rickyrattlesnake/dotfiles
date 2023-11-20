function la --wraps=ls --wraps='exa -lbha' --description 'alias la=exa -lbha'
  exa -lbha $argv; 
end
