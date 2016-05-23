katz_deli = ["Ada", "Grace", "Kent"]

def line(line)
  if line.empty? == true
    puts "The line is currently empty."
  else
    x = "The line is currently:"
    line.each_with_index {|name, place|
    y = " #{place + 1}. #{name}"
    x += y }
    puts x
  end
end

line(katz_deli)

def take_a_number(line, name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.length} in line."
end

def now_serving(line)
  if line.empty? == true
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.shift}."
  end
end
