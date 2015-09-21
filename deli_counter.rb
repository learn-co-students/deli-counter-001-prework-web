def take_a_number(katz_deli, name)
  katz_deli << name
  puts("Welcome, #{name}. You are number #{katz_deli.size} in line.")
  katz_deli.size
end

def now_serving(katz_deli)
  if katz_deli.size > 0
    puts "Currently serving #{katz_deli.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end

def line(katz_deli)
  if katz_deli.size > 0
    line_counter = 1
    list = "The line is currently:"
    katz_deli.each do |name|
      list << " #{line_counter}. #{name}"
      line_counter += 1
    end
    puts list
  else
    puts "The line is currently empty."
  end
end