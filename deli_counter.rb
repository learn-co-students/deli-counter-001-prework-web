# Write your code here.

def line(people)
  if people.empty?
    puts "The line is currently empty." 
  else
    string = "The line is currently: "
    people.each.with_index {|person, index| string << "#{index + 1}. #{person} "}
    puts string.strip
  end
end

def take_a_number(deli, person)
  deli << person
  puts "Welcome, #{person}. You are number #{(deli.index(person)+1)} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end