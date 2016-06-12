katz_deli = []

def line(katz_deli)
  if katz_deli.length > 0
    x = 0
    line_msg = "The line is currently:"
    while x < katz_deli.length
      line_msg += " #{x+1}. #{katz_deli[x]}"
      x += 1
    end
    puts line_msg
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  position = katz_deli.index(name) + 1
   puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end

end
