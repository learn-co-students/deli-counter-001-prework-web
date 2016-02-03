#NOTE: other student having trouble - recommend using 'join' (to convert 
#array to string?)

katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]

def line(array)
  if array.empty?
    puts "The line is currently empty."
  else
    # array.each_with_index do |customer, index|
    #   puts "The line is currently: #{index + 1}. #{customer}"
    # end
    #TODO: try to refactor the following line - this passes test but is ugly. 
    puts "The line is currently: 1. #{array[0]} 2. #{array[1]} 3. #{array[2]}"
  end 
end

def take_a_number(array, name)
  if array.empty? #check for an empty array.
    #array << array.length
    array << name
  elsif array.any? #check for a non-empty array.
    array << name
  end
  #NOTE: many hours of refactoring and confusion boiled down to replacing a 'return'
  #with the following 'puts' - talk w/ Glen about this.
  puts "Welcome, #{name}. You are number #{array.length} in line."
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}." 
    array.shift
  end 
end

#p take_a_number(katz_deli, "Beau")