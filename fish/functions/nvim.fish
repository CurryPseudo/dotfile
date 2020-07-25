# Defined in - @ line 1
function nvim --wraps=vim --wraps='proxychains -q nvim' --description 'alias nvim proxychains -q nvim'
  proxychains -q nvim $argv;
end
