def line(people)
  if people == []
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    people.each_with_index do |person, i|
    current_line << " #{i + 1}. #{person}"
    end
  puts current_line
  end
end

def take_a_number(line, new_person)
  line.push(new_person)
  puts "Welcome, #{new_person}. You are number #{line.index(new_person) + 1} in line."
end

def now_serving(line)
  if line == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}."
    line.shift
  end
end