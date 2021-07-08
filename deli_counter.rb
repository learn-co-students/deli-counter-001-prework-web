katz_deli = []

def line(katz_deli)
  line = ""
  if katz_deli == []
    puts "The line is currently empty."
  else 
    katz_deli.each.with_index(1) do |name, pos|
    line << " #{pos}. #{name}"
  end
  puts "The line is currently:#{line}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  katz_deli.push 
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end