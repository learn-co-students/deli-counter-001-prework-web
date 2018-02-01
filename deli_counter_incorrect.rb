# ------ line -----

def line(deli_line)
  if deli_line.size == 0
    puts "The line is currently empty."
  else
    order = "The line is currently:"
    deli_line.each_with_index do |name, index|
    order << " #{index+1}. #{name}"
    puts order # this is the mistake line
    end
  end
end

# The example above puts out:
# The line is currently: 1. grace
# The line is currently: 1. grace 2. kelly
=begin 
Having the puts order in the else code means that while the 
order will properly collect names it will incorrectly print out 
a new string each time a new name is added to the line. 
By putting the puts order right after the else 'end' each name 
and number will only be added to ONE string instead of creating 
a new string each time
=end

def line(deli_line)
  if deli_line.size == 0
    puts "The line is currently empty."
  else
    deli_line.each_with_index do |name, index|
    puts "The line is currently: #{index+1}. #{name}" #mistake
    end
  end
end

# The example above puts out:
# The line is currently: 1. grace
# The line is currently: 2. kelly
=begin
Instead of collecting and ordering names, this method outputs 
a complete string for each name and index pair from the given
array
=end

def line(deli_line)
if deli_line.size == 0
 puts "The line is currently empty."
else
deli_line.each_with_index do |name, index|
order = "The line is currently: #{index+1}. #{name}"
# the above line generates the error
end
puts order
end
end

# Will return a line of name error with undefined variable 'order'
# a variable must be defined before the 'do'
# NOTE : if for some reason you defined an empty variable before
# the do, it will still output incorrectly and include "The line.."
# before each name:
# The line is currently: 1. samThe line is currently: 2. kelly


























