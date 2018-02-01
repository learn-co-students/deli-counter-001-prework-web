def line(people)
  if people == []
    puts "The line is currently empty."
  else 
    people_string = "The line is currently:"
    people.each_with_index {|person, i| people_string += " #{i + 1}. #{person}"}
    puts people_string
  end
end

def take_a_number(people, name)
  people << name
  puts "Welcome, #{name}. You are number #{people.length} in line."
end

def now_serving(people)
  if people == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{people.shift}."
  end
end