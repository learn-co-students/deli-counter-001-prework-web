# Write your code here.
def line(array)
  if array.size !=0
    string = "The line is currently:" 
      array.each_with_index do |customer, index| string += " #{index+1}. #{customer}"
      end
      puts string
  else
     puts "The line is currently empty."
end
end

def take_a_number(array,name)
  array << name
  position = array.size
  puts "Welcome, #{array.last}. You are number #{position} in line."
end

def now_serving(array)
    if array.size != 0
      name = array.first
      puts "Currently serving #{name}."
      served = array.shift
    else
    puts "There is nobody waiting to be served!"
end
end