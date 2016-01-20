katz_deli = [] # the line starts out emptoy

def line(array)
line = array.size
  if line == 0   # When the line count is zero, the following message will appear
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    array.each.each_with_index {|name, order| message.concat(" #{order+1}. #{name}")} #use concat to add an array to an array. Use with)index to index each person in the array and create an order
    puts message #puts the message with the added name and order
  end
end

def take_a_number(array, name)
  array.push(name)
  order = array.index(name) #creates the numerical index
  puts "Welcome, #{name}. You are number #{order+1} in line."
end

def now_serving(array)
line = array.size
  if line == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift #deletes the first the zeroith item fo the array.
  end
end