# Write your code here.

# katz_deli = []
# other_deli = ["Logan", "Avi", "Spencer"]

# line method can be coded in several ways e.g.:
# building up output to puts out at the end of a function call
# or puts out immediately upon condition

def line(deli_arr)
  # initialize output
  output = "The line is currently"
  # use .empty? method to check deli_arr for elements
  # append formated string depending on condition
  if deli_arr.empty?
    output << " empty."
  else
    # using .each_with_index() method iterate over deli_arr
    # use string interpolation to format the string
    output += ":"
    deli_arr.each_with_index { |name, index| output << " #{index+1}. #{name}" }
  end
  puts output
end

def take_a_number(deli_arr, name)
  # append (using shovel operator) name to deli_arr
  deli_arr << name
  # puts out formated string using .index() method and string interpolation
  puts "Welcome, #{name}. You are number #{deli_arr.index(name)+1} in line."
end

def now_serving(deli_arr)
  # use empty? method to check for elements
  # puts out string depending on condition
  if deli_arr.empty?
    puts "There is nobody waiting to be served!"
  else
    # use .shift method to remove first element and return it
    puts "Currently serving #{deli_arr.shift}."
  end
end

# line(katz_deli)
# line(other_deli)
# take_a_number(other_deli, "Kent")
# line(other_deli)
# now_serving(other_deli)
# line(other_deli)