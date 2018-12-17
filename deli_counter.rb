#deli is empty
katz_deli = []

#people in deli if it's empty
other_deli = ["Logan", "Avi", "Spencer"]

def line(chosen_deli)
  #test for line size
  if chosen_deli.empty?
    puts "The line is currently empty."
  else 
    current_deli_line = "The line is currently:"

    #add place and line and person in that place to current_deli_line
    chosen_deli.each_with_index do |person_name, index| 
      current_deli_line << " #{index+1}. #{person_name}"
    end 
    puts current_deli_line
  end
end 

def take_a_number(chosen_deli, person_name)
  #add person's name to end of list
  chosen_deli.push(person_name)

  #welcome person and display place in line
  puts "Welcome, #{person_name}. You are number #{chosen_deli.index(person_name)+1} in line."
end

def now_serving(chosen_deli)
  if chosen_deli.empty?
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{chosen_deli.first}."
    chosen_deli.shift
  end
end
