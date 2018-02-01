

def line (katz_deli)
  if (katz_deli.size ==0)
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    katz_deli.each_with_index do |customer, index|
       string = string + " #{index+1}. #{customer}" 
    end
    puts string
  end
end


def take_a_number (katz_deli, customer)
  index = katz_deli.size + 1
  puts "Welcome, #{customer}. You are number #{index} in line."
  katz_deli.push(customer)
end

def now_serving (ketz_deli)
  if (ketz_deli.size == 0) 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{ketz_deli.shift}."
  end
end