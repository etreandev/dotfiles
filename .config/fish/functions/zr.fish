function zr --wraps='cd $(git rev-parse --show-toplevel)' --description 'alias zr cd $(git rev-parse --show-toplevel)'
  cd $(git rev-parse --show-toplevel) $argv
        
end
