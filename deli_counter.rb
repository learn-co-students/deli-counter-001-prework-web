def take_a_number(deli, cust)
  # Enters new customer to the end of the deli array
  deli.push(cust)
  # Assigns a number to the new customer
  num = deli.index("#{cust}") + 1
  # Puts response based on new customer's place in line
  puts "Welcome, #{cust}. You are number #{num} in line."
end

def line(deli)
  # Takes the deli array and creates a new array with a number assignment
  line_deli = []
  deli.each do |per|
    # Assigns customer their place in line
    num = deli.index("#{per}") + 1
    # Converts name and place number into string
    line_deli << "#{num}. #{per}"
  end
  # Decides the response based on the line and outputs the string.
  if deli == []
    puts "The line is currently empty."
  else
    # Turns the new array into a string
    list = line_deli.join(" ")
    puts "The line is currently: #{list}"
  end
end

def now_serving(deli)
  # Decides the response based on the line and outputs the string.
  if deli == []
    puts "There is nobody waiting to be served!"
  else
    # Removes the first name from the deli array and converts to string
    serve = deli.shift
    puts "Currently serving #{serve}."
  end
end
