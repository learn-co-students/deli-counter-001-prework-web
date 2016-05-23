katz_deli = [ ]
#representing an empty array 

def line(katz_deli) #setting line method with the katz_deli argument 
  if katz_deli.empty? #processes empty array
    puts "The line is currently empty."
  else 
    puts "The line is currently: 1. #{katz_deli[0]} 2. #{katz_deli[1]} 3. #{katz_deli[2]}"
    #this calls the array with its index and assigns them a number 
  end
end

def take_a_number(katz_deli, customer)
  if katz_deli.empty? #as there is no one in the line we call the empty array
    katz_deli.push(customer) #this adds a customer to line
    puts "Welcome, #{customer}. You are number 1 in line."
  else 
    katz_deli.push(customer) #this adds a customer to the end of the line
    puts "Welcome, #{customer}. You are number 4 in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.empty? #calls the empty array 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift #this removes customer from the line
  end
end