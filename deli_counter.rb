def line(people)
  line_number = "The line is currently:"
  if people.length != 0
    people.each_with_index do |person, index|
      line_number << " #{index + 1}. #{person}"
    end
    puts line_number
  else
    puts "The line is currently empty."
  end
end

def take_a_number(people, name)
  people << name
  puts "Welcome, #{name}. You are number #{people.length} in line."
end

def now_serving(people)
  if people.length != 0
    puts "Currently serving #{people[0]}."
    people.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
truth