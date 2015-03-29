=begin

  Weighted Randomizer is a situation you have a group of items with corresponding weights, and you want to randomly select an item with its associated weight taken into account.

=end

def weightedRandomizer ( weighted_input_array )

  # Initializers
  labels = []
  random_label = ""

  # Load Labels into array times the weight
  weighted_input_array.each do |element|
    element.each do |y|
      counter = element[1]
      until counter == 0
        labels << element[0]
        counter -= 1
      end
    end
  end	

  return random_label = labels.sample

end

def testWeightedRandomizer ( input, number_of_runs )
  
  #Intializer
  label_counter = {}

  # Iterate through input and increment counters
  for run_counter in 1..number_of_runs do
    key = weightedRandomizer(input)
    if label_counter[key].nil?
      label_counter[key] = 1
    else
      label_counter[key] += 1
    end
  end

  puts label_counter.inspect

end

input = [ ["red", 10], ["green", 30], ["blue", 20] ]

testWeightedRandomizer(input,10000)