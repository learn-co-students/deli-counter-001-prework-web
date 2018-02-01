katz_deli = []

def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else
    katz_deli != 0
    answer = "The line is currently:"
    katz_deli.each.with_index(1) do |index, customer|
    answer += " #{customer}. #{index}"
  end
  puts "#{answer}"
  end
end

def take_a_number(katz_deli, customer)
 if katz_deli.count != 0
  katz_deli << customer
puts "Welcome, #{customer}. You are number #{katz_deli.count} in line."
  else 
    katz_deli << customer
  puts "Welcome, #{customer}. You are number #{katz_deli.count} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.count != 0
    puts "Currently serving #{katz_deli.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end