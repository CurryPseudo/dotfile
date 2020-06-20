# Defined in - @ line 1
function p --wraps='proxychains -q' --description 'alias p=proxychains -q'
  proxychains -q $argv;
end
