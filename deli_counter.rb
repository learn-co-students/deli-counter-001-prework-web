# Write your code here.
def line(katz_deli)
  if katz_deli.any? {|element| element}
    currently = "The line is currently:"
    people = []
    for person in katz_deli
       people << " #{katz_deli.index(person) + 1}. #{katz_deli[katz_deli.index(person)]}"
    end
    puts currently + people.join
  else
    puts "The line is currently empty."
    []
  end
end

def take_a_number(katz_deli, new_addition)
  katz_deli << new_addition
  puts "Welcome, #{katz_deli.last}. You are number #{katz_deli.index(new_addition) + 1} in line."
end

def now_serving(katz_deli)
  unless katz_deli.empty?
    puts "Currently serving #{katz_deli.shift}."
  else 
    puts "There is nobody waiting to be served!"
  end
end



