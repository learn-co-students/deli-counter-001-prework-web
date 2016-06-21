katz_deli = Array.new

def line(deli)
  if deli.size == 0
    puts "The line is currently empty."
  else
    output = "The line is currently:"
    deli.each_with_index do |name, index|
      output.concat(" #{index + 1}. #{name}")
    end
    puts output
  end
end

def take_a_number(deli, name)
  deli.push(name)
  puts "Welcome, #{name}. You are number #{deli.index(name) + 1} in line."
end

def now_serving(deli)
  if deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.delete_at(0)
  end
end
