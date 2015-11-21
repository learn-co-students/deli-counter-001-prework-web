#Here is my implementation, hope you like it !!!!
# I DID :) 

katz_deli = []

def take_a_number(waiting_line, person)
  waiting_line << person 
  puts "Welcome, #{person}. You are number #{ waiting_line.index(person) + 1 } in line."
end 

def now_serving(waiting_line)
  if waiting_line.empty? 
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{waiting_line.shift}."
  end 
end 

def line(waiting_line)
  if waiting_line.empty? 
    puts "The line is currently empty."
  else 
    people_on_line = ''
    waiting_line.each_with_index do  |person, idx| 
      people_on_line << "#{idx + 1}. #{person} "
    end 
    puts "The line is currently: #{people_on_line.strip}"
  end 
end 