

def line (katz_deli)
  if katz_deli.size < 1 
    puts "The line is currently empty." 
  else
    line_order = katz_deli.collect.with_index do |name, index|
      "#{index +1}. #{name}"
    end
    puts "The line is currently: #{line_order.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving (katz_deli)
  if katz_deli.size < 1
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end