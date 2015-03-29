=begin

Problem 1: Double Sort
Please write a method which accepts an array of strings. Each element can either be a number ("165") or a word ("dog"). Your method should sort and print the array such that (1) The words are printed in alphabetical order and the numbers in numerical order, and (2) the order of words and numbers within the array is the same. 

Examples (input => output):

sort(['5', '4', 'dog', '1', 'cat'])
=> ['1', '4', 'cat', '5', 'dog']

sort(['dog', 'cat'])
=> ['cat', 'dog']

sort('5', '3')
=> ['3', '5']

You can use standard library sort functions, and should assume that all inputs will be valid. If you make any other assumptions, please document those as well. You can use any programming language that you'd like. 

Additionally, you may assume that you'll be given a utility method that returns whether a given String is a valid number (e.g. 'isNumber()', where isNumber('dog') returns false, and isNumber('15') returns true). 

=end

class String
  def is_integer?
    self.to_i.to_s == self
  end
end

def double_sort(array_to_sort) 
	strings = []
  numbers = []
  identity = []
  sorted_array = []

  array_to_sort.each do |x| 
    if !x.is_integer? 
      strings << x
      identity << 'string'
    else
      numbers << x 
      identity << 'number'
    end
  end
  strings.sort!
  numbers.sort!
  
  identity.each do |type| 
    if type == 'string'
      sorted_array << strings.shift
    else
      sorted_array << numbers.shift
    end
  end
  
  return sorted_array   
end

puts double_sort(['1', '4', 'cat', '5', 'dog'])
puts double_sort(['dog', 'cat'])
puts double_sort(['3', '5'])