
# did you know that all delis are haunted?

def line(deli)
  if  deli == []
      puts "The line is currently empty."
  else
      hungry = deli.each.with_index.map {|person, i| "#{i+1}. #{person}"}
      starving = hungry.join(" ")
      puts "The line is currently: #{starving}"
  end
end

def take_a_number(deli, new_person)
  if  deli == []
      deli << new_person
      puts "Welcome, #{new_person}. You are number 1 in line."
  else
      deli << new_person
      waiting = deli.length
      puts "Welcome, #{new_person}. You are number #{waiting} in line."
  end
end

def now_serving(deli)
  if  deli == []
      puts "There is nobody waiting to be served!"
  else
      almost = deli.first
      puts "Currently serving #{almost}."
      deli.shift
  end
end
