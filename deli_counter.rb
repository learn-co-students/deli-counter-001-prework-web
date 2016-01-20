
katz_deli = [] #the deli opens with empty array

def line(katz_deli)
  if katz_deli.empty? #print an empty message if array empty
    puts "The line is currently empty."
  else
    in_line = "The line is currently:" #define a line intro text
    katz_deli.each_with_index.map do |customer, index| #find each customer & their index number
      in_line.concat(" #{index+1}. #{customer}") #append index & name to the in_line string
    end
    puts in_line #print the string after all names are added
  end
end

def take_a_number(katz_deli, customer)
  katz_deli.push(customer) #add a customer to the end of the array
  if katz_deli.empty?
    puts "Welcome, #{customer}. You are number 1 in line." #customer is first if empty
  else
    puts "Welcome, #{customer}. You are number #{katz_deli.size} in line." #else customer's line position equals size of array
  end
end

def now_serving(katz_deli)
  if katz_deli.empty? 
    puts "There is nobody waiting to be served!" #welcome message if empty
  else
    puts "Currently serving #{katz_deli.shift}." #return and remove first element of array
  end
end