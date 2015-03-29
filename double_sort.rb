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