# an array for names of people at deli,
# should start blank

katz_deli = []


# Build the line method that shows everyone their current place in 
# the line. If there is nobody in line, it should say 
# "The line is currently empty.".

def line(deli_line)
  if deli_line.size == 0
    puts "The line is currently empty."
  else
    order = "The line is currently:"
    deli_line.each_with_index do |name, index|
    order << " #{index+1}. #{name}"
    end
    puts order
  end
end

# Build a method that a new customer will use when entering the deli. 
# The take_a_number method should accept two arguments, the array for 
# the current line of people (katz_deli), and a string containing the 
# name of the person wishing to join the line. The method should return 
# the person's name along with their position in line.

def take_a_number(current_line, name)
  current_line << name
  puts "Welcome, #{name}. You are number #{current_line.size} in line."
end

# Build the now_serving method which should call out (i.e. puts) the 
# next person in line and then remove them from the front. If there is 
# nobody in line, it should call out (puts) that "There is nobody 
# waiting to be served!".

def now_serving(deli_line)
  if deli_line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line.shift}."
  end
end


# Definitions to review:

# method and argument
# .size (what is it actualy doing)
# recheck interpolation
# recheck each_with_index
# shoveling = adding to arrays and ALSO strings


