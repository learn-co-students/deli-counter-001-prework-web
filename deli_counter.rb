

def line (katz_deli)
    if katz_deli.size < 1 
      puts "The line is currently empty." if katz_deli.size < 1
    else
     first_part = katz_deli.collect.with_index do |i, index|
      "#{index +1}. #{i}"
    end
     puts "The line is currently: #{first_part.join(" ")}"
  end
end

def take_a_number (katz_deli, name)
  katz_deli.push(name)
  line_length = katz_deli.size
  if katz_deli == 1
    puts "Welcome, #{name}. You are number 1 in line."
  else 
    puts "Welcome, #{name}. You are number #{line_length} in line."
  end
end

def now_serving (katz_deli)
  if katz_deli.size < 1
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end