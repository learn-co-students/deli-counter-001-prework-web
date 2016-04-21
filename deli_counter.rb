def line(customers)
  if customers == []
    puts  "The line is currently empty."
  else
    list = ""
    customers.each_with_index do |name, index|
      list += "#{index+1}. #{name} "
    end
    puts "The line is currently: " + list.strip
  end

end

def take_a_number(customers, person)
  customers.push(person)
  puts "Welcome, #{person}. You are number #{customers.index(person)+1} in line."
end

def now_serving(customers)
  if customers == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customers.shift}."
  end
end