katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      current_line << " #{index + 1}. #{name}"
  end
  puts current_line
  end
end

def take_a_number(katz_deli, customer)
  puts "Welcome, #{customer}. You are number #{katz_deli.length + 1} in line."
  katz_deli << customer
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end