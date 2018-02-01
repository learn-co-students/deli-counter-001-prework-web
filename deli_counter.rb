# Write your code here.


def take_a_number(katz_deli, customer)
  my_number = []
  katz_deli.push(customer)
  katz_deli.each_with_index{|name, index| my_number << "Welcome, #{name}. You are number #{index + 1} in line."}
  puts my_number.last
end

def line(katz_deli)
  current_line_up = []
  if katz_deli.count < 1
    puts "The line is currently empty."
  else
    katz_deli.each_with_index{|name, index| current_line_up << "#{index + 1}. #{name}"}
    puts "The line is currently: #{current_line_up.join(" ")}"
  end
end

def now_serving(katz_deli)
  if katz_deli.count < 1
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
