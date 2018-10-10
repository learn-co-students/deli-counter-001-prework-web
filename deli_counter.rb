def line(katz_deli)
  if katz_deli.empty? == true
    puts "The line is currently empty."
  else
    new_deli = katz_deli.map.with_index(1) do |name, index| "#{index}. #{name}"
  end
puts "The line is currently: " + new_deli.join(" ")
end
end

def take_a_number(katz_deli, name)
    katz_deli.push(name)
    line_index = katz_deli.index { |x| x == "#{name}"}+1
    puts "Welcome, #{name}. You are number #{line_index} in line."
  end

def now_serving(katz_deli)
  if katz_deli.empty? == true
      puts "There is nobody waiting to be served!"
    else
      current_customer = katz_deli.at(0)
      puts "Currently serving #{current_customer}."
      katz_deli.shift
    end
  end
