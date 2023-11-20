function docker:stop:all --wraps='docker stop (docker ps -a -q)' --description 'alias docker:stop:all=docker stop (docker ps -a -q)'
  docker stop (docker ps -a -q) $argv; 
end
