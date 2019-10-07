require 'pry'

def valid_parentheses(str)
  return true if str == ''
  pars = str.split('').select do |char|
    ['(', ')'].include?(char)
  end
  truthy = pars.map do |par|
    if par == '(' && pars[pars.index(par)..-1].include?(')')
      pars[pars.index(')')] = true
      true
    elsif par != true
      false
    end
  end
  truthy.uniq.length == 1 && truthy.uniq.first == true
end
