
# Write your code here.

katz_deli = []

def line(array)
  if array == []
    puts "The line is currently empty."
  else
    lineup = "The line is currently:"
    array.each_with_index { |person,index| lineup << " #{index+1}. #{person}" }
    puts lineup
  end
end

def take_a_number(array, newPerson)
  array.push(newPerson)
  place = array.index(newPerson)
  puts "Welcome, #{newPerson}. You are number #{place+1} in line."
end

def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    serving = array.shift
    puts "Currently serving #{serving}."
  end
end
