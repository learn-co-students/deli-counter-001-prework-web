# Write your code here.

def line(arrays)
  counter = 1
  line_status = "The line is currently:"
  if arrays.size == 0
    puts "The line is currently empty."
  else arrays.each do |index|
    line_status << " #{counter}. #{index}"
    counter += 1
  end
  puts line_status
end
end

def take_a_number(line_array, new_person)
  counter = line_array.size + 1
  puts "Welcome, #{new_person}. You are number #{counter} in line."
  line_array.push(new_person)
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else puts "Currently serving #{array.first}."
    array.shift
  end
end
