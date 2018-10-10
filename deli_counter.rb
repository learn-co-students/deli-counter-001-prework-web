# Writing comments for this lab because it was tough
def line(katz_deli)
  # if katz_deli is empty then let customers know the line is empty
  if katz_deli.empty? == true
    puts "The line is currently empty."
  else
    # I'm using the map.with_index method to create a new array that contains the values returned by the block.
    # The (1) adjusts the index to start at 1 instead of 0
     updated_deli = katz_deli.map.with_index(1) do |name, index| "#{index}. #{name}"
  end
  # I used the join method instead of .to_s so I could add an argument to create space
  puts "The line is currently: " + updated_deli.join(" ")
end
end

def take_a_number(katz_deli, name)
  # add new names to the end of the line with push
  katz_deli.push(name)
  # Using .index to return the index of the first object for which the block returns true, and storing in line_index
  # then iterating and adding 1 each time through
  line_index = katz_deli.index { |x| x == "#{name}"}+1
  puts "Welcome, #{name}. You are number #{line_index} in line."
end

def now_serving(katz_deli)
  # if katz_deli is empty announce there is no one waiting
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else
    # store whoever is front of the line in current_customer
    current_customer = katz_deli.at(0)
    # puts "currently serving" whoever is at the front of the line
    puts "Currently serving #{current_customer}."
    # delete customers who have been served from katz_deli
    katz_deli.shift
  end
end
