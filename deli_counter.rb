# Write your code here.
katz_deli = []

def line(array)
  line_array = []
  if array == []
    puts "The line is currently empty."
  else
    array.each_with_index do |name, index|
      line_array << " #{index + 1}. #{name}"
    end
    puts "The line is currently:#{line_array.join}"
  end
end

def take_a_number(array, string)
  array << string
  puts "Welcome, #{string}. You are number #{array.size} in line."
end

def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
end
