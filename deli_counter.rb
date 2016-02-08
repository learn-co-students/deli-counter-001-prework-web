def take_a_number(deli_log, customer)
  deli_log << customer
  puts "Welcome, #{deli_log[-1]}. You are number #{deli_log.size} in line."
end

def now_serving(deli_log)
  if deli_log.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_log[0]}."
    deli_log.shift
  end
end

def line(deli_log)
  if deli_log.size == 0
    puts "The line is currently empty."
  else
     current_line = "The line is currently:"
    deli_log.each.with_index(1) { |person, i|
      current_line << " #{i}. #{person}"}
    puts current_line
  end
end

