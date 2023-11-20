function port --wraps='sudo lsof -i' --description 'alias port=sudo lsof -i'
  sudo lsof -i $argv; 
end
