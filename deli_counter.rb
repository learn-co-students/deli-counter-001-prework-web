#NOTE: other student having trouble - recommend using 'join' (to convert 
#array to string?)

katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]

def line(array)
  if array.empty?
    puts "The line is currently empty."
  else
    customers_in_line = array.each_with_index.map do |customer, index|
      "#{index + 1}. #{customer}"
    end
    puts "The line is currently: #{customers_in_line.join(" ")}"
  end 
end

def take_a_number(array, name)
  if array.empty?
    array << name
  elsif array.any?
    array << name
  end
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