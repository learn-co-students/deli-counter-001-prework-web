# Write your code here.
katz_deli = []

def take_a_number(array, name)
  array.push(name)
  place = array.index(name) + 1
  puts "Welcome, #{name}. You are number #{place} in line."
end

def line(array)
  if array.size == 0
    puts "The line is currently empty."
  else 
    line_string = "The line is currently:"
    array.each_with_index {|name, i| line_string << " #{i+1}. #{name}"}
    puts line_string

  end

end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
end
