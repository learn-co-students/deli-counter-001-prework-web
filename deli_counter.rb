katz_deli = []

def line(katz_deli)
 if katz_deli.empty?
  puts "The line is currently empty."
else
  line = ""
  katz_deli.each.with_index do |name, position|
    line += " #{position +1}. #{name}"
  end
  puts "The line is currently:#{line}"
end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) +1} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
