
def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    display = ""
  katz_deli.each_with_index do |value, index|
    display += " #{index.to_i+1}. #{value}"
  end
  puts "The line is currently:#{display}"
end
end

def take_a_number(katz_deli, customer)
  puts "Welcome, #{customer}. You are number #{katz_deli.length+1} in line."
  katz_deli << customer
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli[0]
    katz_deli.shift
    puts "Currently serving #{name}."
  end
end
