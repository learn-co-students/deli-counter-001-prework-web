# Write your code here.

katz_deli = []

def line(people)
  line = []
  new_line = ""
  if people.empty?
    puts "The line is currently empty."
  else
    people.each_with_index do |name, index|
      index = index.to_i + 1
      line << "#{index}. #{name}"
      new_line = line.join(' ')
    end
    puts "The line is currently: #{new_line}"
  end
  line
end

def take_a_number(line, name)
  new_line = line << name
  spot = new_line.index(name)
  puts "Welcome, #{name}. You are number #{spot.to_i + 1} in line."
end

def now_serving(person)
  if person.empty? 
    puts "There is nobody waiting to be served!"
  else
    next_in_line = person.shift
    puts "Currently serving #{next_in_line}."
  end

end

