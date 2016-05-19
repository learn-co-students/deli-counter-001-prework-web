katz_deli = []

def line(line_array)
  line_string = "The line is currently"
  if line_array == []
    line_string << " empty."
  else
    line_string << ":"
    line_array.each_with_index do |name,place_in_line|
      line_string << " #{place_in_line+1}. #{name}"
    end
  end
  puts line_string
end
def take_a_number(line_array,customer_name)
  line_array << customer_name
  puts "Welcome, #{customer_name}. You are number #{line_array.index(customer_name)+1} in line."
end
def now_serving(line_array)
  if line_array == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line_array.first}."
    line_array.shift
  end
end