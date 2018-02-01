def line(katz_deli)
  if katz_deli.length == 0
    line_length = "The line is currently empty."
  else
    line_length = "The line is currently:"
    katz_deli.map.with_index do |person, index|
      line_length += " #{index + 1}. #{person}"
    end
  end
  puts line_length
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end