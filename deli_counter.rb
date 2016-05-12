def line(deli)
str = ""
  if deli == []
    puts "The line is currently empty."
  else
    deli.each do |name|
      i = deli.index(name)
      str += " #{i+1}. " + name
    end
    puts "The line is currently:#{str}"
  end
end

def take_a_number(deli, person)
  if deli == []
    deli << person
  deli.each do |name|
    i = deli.index(name)
    puts "Welcome, #{name}. You are number #{i+1} in line."
  end
else
  deli << person
  puts "Welcome, #{person}. You are number #{deli.length} in line."
end
end

def now_serving(deli)
  if deli == []
    puts "There is nobody waiting to be served!"
  else
#    deli.each do |name|
      puts "Currently serving #{deli[0]}."
      deli.shift
    end

end
