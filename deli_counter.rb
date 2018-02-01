def line(deli)
  if deli.count > 0
    line = "The line is currently:"
    deli.each_with_index do |person, k|
      line << " #{k+1}. #{person}"
    end
    puts line
  else
    puts "The line is currently empty."
  end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.size} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end
