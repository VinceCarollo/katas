require 'pry'

def valid_parentheses(str)
  open = 0
  str.chars.each do |char|
    open += 1 if char == '('
    open -= 1 if char == ')'
    return false if open < 0
  end
  open == 0
end
