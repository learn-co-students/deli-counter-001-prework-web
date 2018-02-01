def line(store_line)
  if store_line.empty?
    puts "The line is currently empty."
  else
    list = ""
    store_line.each_with_index do |name, index|
      list << " #{index + 1}. #{name}"
    end
    puts "The line is currently:#{list}"
  end
end

def take_a_number(store_line, name)
  if store_line.empty?
    puts "Welcome, #{name}. You are number 1 in line."
    store_line << name
  else
    store_line << name
    puts "Welcome, #{name}. You are number #{store_line.length} in line."
  end
  store_line
end

def now_serving(store_line)
  if store_line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{store_line.shift}."
  end
  store_line
end
