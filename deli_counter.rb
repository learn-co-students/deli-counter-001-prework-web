katz_deli = []

def line(katz_deli)
  katz_deli.empty? ? empty_line : current_line(katz_deli)
end

def empty_line
  puts "The line is currently empty."
end

def current_line(katz_deli)
  current_line = "The line is currently:"
    katz_deli.each.with_index(1) { |name, index| current_line << " #{index}. #{name}"}
  puts current_line
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
