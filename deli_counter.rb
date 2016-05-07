# Write your code here.
def line(array)
  line_order_string = ""
  if array.size == 0 
    puts "The line is currently empty."
  else
    array.each_with_index do |name,index|
      line_order_string += " #{index+1}. #{name}"
    end
    puts "The line is currently:#{line_order_string}"
  end
end

def take_a_number(array,name)
  array.push(name)

  if array.size == 1
    puts "Welcome, #{name}. You are number 1 in line."
  elsif array.size > 1 
    puts "Welcome, #{name}. You are number #{array.size} in line."
  end
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    name = array.shift
    puts "Currently serving #{name}."
  end
end