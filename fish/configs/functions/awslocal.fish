function awslocal --wraps='aws --endpoint-url=http://localhost:4566' --description 'alias awslocal=aws --endpoint-url=http://localhost:4566'
  aws --endpoint-url=http://localhost:4566 $argv; 
end
