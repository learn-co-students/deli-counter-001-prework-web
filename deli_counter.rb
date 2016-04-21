def line(customers)
  if customers.empty?
    puts  "The line is currently empty."
  else
    list = ""
    customers.each_with_index { |name, index| list += " #{index+1}. #{name}" }
    puts "The line is currently:" + list
  end
end

def take_a_number(customers, person)
  customers.push(person)
  puts "Welcome, #{person}. You are number #{customers.length} in line."
end

def now_serving(customers)
  if customers.empty?
    puts "There is nobody waiting to be served!" 
  else
    puts "Currently serving #{customers.shift}."
  end
end
