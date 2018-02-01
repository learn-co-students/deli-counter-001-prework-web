katz_deli = Array.new

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    position_in_queue = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      position_in_queue += " #{index + 1}. #{name}"
    end
    puts position_in_queue
  end
end

def take_a_number(katz_deli, new_customer)
  katz_deli.push(new_customer)
  number_in_queue = katz_deli.index(new_customer)
  puts "Welcome, #{new_customer}. You are number #{number_in_queue + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end