def take_a_number (deli_line, name)
  deli_line.push(name)
  spot = deli_line.index(name) + 1

  puts "Welcome, #{name}. You are number #{spot} in line."

  #return deli_line.count
end

def now_serving (deli_line)
  if deli_line.count > 0
    puts "Currently serving #{deli_line.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end

def line (deli_line)
  if deli_line.count > 0
    callout = "The line is currently:"

    deli_line.each_with_index do |x, index|
      callout << " #{index + 1}. #{x}"
    end
        puts callout
  else
    puts "The line is currently empty."
  end
end