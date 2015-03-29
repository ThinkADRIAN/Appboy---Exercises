def randomMarblePicker ( weighted_input_array )
	labels = []
  random_label = ""

  # Load Labels into array
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

def testMarblePicker ( input, number_of_runs )
  label_counter = {}

  for run_counter in 1..number_of_runs do
    key = randomMarblePicker(input)
    if label_counter[key].nil?
      label_counter[key] = 1
    else
      label_counter[key] += 1
    end
  end

  puts label_counter.inspect

end

input = [ ["red", 10], ["green", 30], ["blue", 20] ]

testMarblePicker(input,10000)