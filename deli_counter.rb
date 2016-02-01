def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    deli.collect!.with_index { |name, idx| "#{idx+1}. #{name}" }
    puts "The line is currently: " + deli.join(' ')
  end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.index(name)+1} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end
