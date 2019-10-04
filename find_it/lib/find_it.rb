# Given an array, find the int that appears an odd number of times.

require 'pry'

def find_it(nums)
  odd_count = {}
  nums.each do |num|
    if odd_count[num]
      odd_count[num] += 1
    else
      odd_count[num] = 1
    end
  end
  odd_count.select{|num, count| count.odd?}.keys.first
end
