katz_deli = Array.new

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else current_line = "The line is currently:"
    katz_deli.each_with_index do |name, num|
      current_line << " #{num + 1}. #{name}"
    end
    puts current_line
  end
end

def take_a_number(katz_deli, customer)
  katz_deli << customer
  number = katz_deli.index(customer)
  puts "Welcome, #{customer}. You are number #{number + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    customer = katz_deli.shift
    puts "Currently serving #{customer}."
  end
end
