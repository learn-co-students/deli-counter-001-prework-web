# Write your code here.
katz_deli = []

def line(array)
  if array.length > 0
  intro = "The line is currently:"
  array.each_with_index do |name, index|
    line_place = index + 1
    intro += " #{line_place}. #{name}"
  end
  puts intro
else puts "The line is currently empty."
end
end

def take_a_number(array, name)
  array.push(name)
  new_entry_place = array.index(name) + 1
  puts "Welcome, #{name}. You are number #{new_entry_place} in line."
end

def now_serving(array)
  if array.length > 0
    puts "Currently serving #{array[0]}."
    array.shift
  else puts "There is nobody waiting to be served!"
  end
end
