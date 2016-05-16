def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    index = 0
    line_array = []
    while index < katz_deli.length
      line_array << ("#{index + 1}. #{katz_deli[index]}")
      index += 1
    end
    puts "The line is currently: #{line_array.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{(katz_deli.index(name)) + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.first == nil
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
