katz_deli = []

#Print list of customers in line, or another message if the line is empty.
def line(deli)
  if deli.empty? then
    puts "The line is currently empty."
  else
    output = "The line is currently:"
    deli.each_with_index{ |customer, index|
      output += " #{index + 1}. #{customer}"
    }

    puts output
  end
end

#Add a new customer (name) to the back of the queue.
def take_a_number(deli, name)
  deli.push(name)
  puts "Welcome, #{name}. You are number #{deli.count} in line."
end

#Shift the first customer from the front of the queue and print
def now_serving(deli)
  if deli.empty? then
    puts "There is nobody waiting to be served!"
  else
    customer = deli.shift()
    puts "Currently serving #{customer}."
  end
  deli
end

#take_a_number(katz_deli, "name1")
#take_a_number(katz_deli, "name2")
#take_a_number(katz_deli, "name3")

#line(katz_deli)
