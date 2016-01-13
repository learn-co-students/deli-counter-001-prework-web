# Write your code here.
#make array.find_index(array[0]) your new best friend
#array.map

katz_deli = []

def line(array)
  if array.length > 0
    puts "The line is currently: #{array.find_index(array[0])+1}. #{array[0]} #{array.find_index(array[1])+1}. #{array[1]}"
# #{array.find_index(array[0])+1}
#problem I'm having is having the string present the last option if there is any.

=begin
  if array.length >= 3
    puts " #{array.find_index(array[2])+1}. #{array[2]}"
  end
=end

  else
    puts "The line is currently empty." 
  end
end
def take_a_number (array, name)
  array << name

  puts "Welcome, #{array[-1]}. You are number #{array.find_index(array[-1])+1} in line."
end

def now_serving(array)
  if array.length > 0
    puts "Currently serving #{array[0]}."
    array.shift
  else
    puts "There is nobody waiting to be served!"
  end
end





def get_a_number(line)
  if line == [] 
    line << 1
    1
  else
    line << (line[-1])+1
      line[-1]
  end




end


def serve_customer(line)
  line.shift

end











# Instead of using 1. 2. 3. I can put the code below to find the actual position
# #{array.find_index(array[0])+1}

#array[-1]