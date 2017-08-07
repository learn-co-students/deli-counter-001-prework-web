def line(array)
katz_deli = array
people_on_the_line = "The line is currently:"
customer_num = 1
if katz_deli.empty?
  puts "The line is currently empty."
else
  katz_deli.each do |customer|
    people_on_the_line += " #{customer_num}. #{customer}"
    customer_num += 1

  end
  puts people_on_the_line

end

end



def take_a_number(array, element)
    array.push(element)
    puts "Welcome, #{element}. You are number #{array.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
