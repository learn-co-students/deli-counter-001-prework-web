katz_deli = []

def take_a_number(katz_deli, name)
  if katz_deli.empty?
    katz_deli.push(name)
    position = katz_deli.index(name)+1
    puts "Welcome, #{name}. You are number #{position} in line."
  elsif katz_deli.any?
    katz_deli.push(name)
    position = katz_deli.index(name)+1
    puts "Welcome, #{name}. You are number #{position} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    index = 0
    puts "Currently serving #{katz_deli[index]}."
    katz_deli.shift
  end
end

def line (katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    status = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      index = (index + 1).to_s
      position = " " + index + ". " + name
      status += position
    end
    puts status
  end
end