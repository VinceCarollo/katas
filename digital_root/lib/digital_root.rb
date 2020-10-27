require 'pry'

def digital_root(num)
  nums = num.to_s.split('').map(&:to_i)
  nums = nums.sum.to_s.split('').map(&:to_i) until nums.length == 1
  nums.first
end
