# Write your code here

def line(customers)
  people_in_line = ""
  if customers.size == 0
    people_in_line = "The line is currently empty."
  else
    people_in_line = "The line is currently:"
    for i in 0...customers.size do
      people_in_line += " #{i+1}. #{customers[i]}"
    end
  end
  puts people_in_line
end

def take_a_number(customers, person)
  customers << person
  puts "Welcome, #{person}. You are number #{customers.size} in line."
  customers
end

def now_serving(customers)
  if customers.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customers.shift}."
  end
  customers
end
