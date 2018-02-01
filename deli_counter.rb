# Write your code here.

def take_a_number(current_line, new_customer)
  current_line.push(new_customer)
  number = current_line.index(new_customer) + 1
  puts "Welcome, #{new_customer}. You are number #{number} in line."
  number
end

def line(current_line)
  length_of_line = current_line.size
  #if there are no people on line
  if length_of_line == 0
    puts "The line is currently empty."
  else
    length_of_line -= 1 #subtract 1 bc indexes start at 0
    line = (0..length_of_line)
    line_list = []
    for index in line do #for each person in line
      name = current_line[index]
      position = index + 1 #so numbers start at 1
      person_in_line = "#{position}. #{name}"
      line_list.push(person_in_line)
    end
    str_line_list = line_list.join(" ")  #combine all elements of the array into one string
    display = "The line is currently: #{str_line_list}"
    puts display
    display
  end
end

def now_serving(current_line)
  if current_line.size == 0
    puts "There is nobody waiting to be served!"
  else
    currently_serving = current_line.shift()
    puts "Currently serving #{currently_serving}."
  end
end




katz_deli = []
take_a_number(katz_deli, "John")
take_a_number(katz_deli, "Eddie")
line(katz_deli)
