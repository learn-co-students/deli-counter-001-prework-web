def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else 
    line_list = katz_deli.each_with_index.collect {|customer, index| 
      "#{index + 1}. #{customer}"
    }
    puts "The line is currently: #{line_list.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
end

def now_serving(deli)
  if deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end