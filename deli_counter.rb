#katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    shopper = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      shopper +=  " #{index + 1}. #{name}" 
  end
  puts shopper
end
end

def take_a_number(katz_deli, customer)
  katz_deli.push(customer)
  shopper = katz_deli.index(customer)
  puts "Welcome, #{customer}. You are number #{shopper + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
      puts "There is nobody waiting to be served!"
  else
      puts "Currently serving #{katz_deli.shift}."
  end
	
end
