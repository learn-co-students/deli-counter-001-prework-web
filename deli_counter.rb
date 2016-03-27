def line(in_line)
  if in_line.count == 0
    puts "The line is currently empty."
  else
    customers = "The line is currently:"
    in_line.each_with_index do |customer, index|
      customers << " #{index + 1}. #{customer}"
    end
    puts customers
  end
end



def take_a_number(katz_deli, name)
  katz_deli << "#{name}"
  puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end


def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
    else
      current_customer = katz_deli.shift
    puts "Currently serving #{current_customer}."
  end
end
