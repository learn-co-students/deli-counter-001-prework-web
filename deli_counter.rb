def line(array)
  if array.empty?
    puts "The line is currently empty."
  else
    line_order_string = "The line is currently:"
    array.each_with_index do |name, index|
      line_number = index + 1
      line_order_string += " #{line_number.to_s}. #{name.capitalize}"
    end
    puts line_order_string
  end
end

def take_a_number(array, name)
  if array.empty?
    puts "Welcome, #{name}. You are number 1 in line."
    array << name
  else
    array << name
    number_in_line = array.index(name) + 1
    puts "Welcome, #{name}. You are number #{number_in_line} in line."
  end
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
    name = array.first
    puts "Currently serving #{name}."
    array.shift
  end
end


