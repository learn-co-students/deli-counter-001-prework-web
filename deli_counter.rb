katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    new_line = "The line is currently:"
    katz_deli.each_with_index do |name, index|
    new_line << " #{index + 1}. #{name}"
    end
    puts new_line
  end
end

def take_a_number(katz_deli, new_customer)
  katz_deli << new_customer
  updated_number = katz_deli.index(new_customer)
  puts "Welcome, #{new_customer}. You are number #{updated_number + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.length >= 1
    puts "Currently serving #{katz_deli.shift}."
  else katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  end
end


