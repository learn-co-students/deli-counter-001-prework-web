def take_a_number(deli, customer)
  katz_deli = deli
  next_customer = customer
  katz_deli.push(next_customer)
  customer_number = katz_deli.index(next_customer) + 1
  puts "Welcome, #{customer}. You are number #{customer_number} in line."
end


def line(deli)
  katz_deli = deli
  current_lineup = []
  if katz_deli.empty? == true
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |place_in_line, index|
      place_in_line = index + 1
      current_lineup.push("#{place_in_line}. #{katz_deli[index]}")
    end
  puts "The line is currently: #{current_lineup.join(" ")}"
  end
end



def now_serving(deli)
  katz_deli = deli
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else 
    serving_customer = katz_deli.shift
    puts "Currently serving #{serving_customer}."
  end
end