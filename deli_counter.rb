# Write your code here.

def line(the_line)
  if the_line.empty? # this is a method of the array # katz_deli = [] # argument. An array that represents the deli line
                                                    # other_deli = ["Logan", "Avi", "Spencer"] 
    puts "The line is currently empty."
   else
    customer_position = []
    the_line.each_with_index { |customer, position|  # customer=element, position=index
      customer_position.push( "#{position + 1}. #{customer}")  #adding to the array "1. Henry"
    }
    puts "The line is currently: " + customer_position.join(" ") #concatenate . adding 2 strings together
  end
end 

other_deli = ["Logan", "Avi", "Spencer"] 
katz_deli = []
# #im going to call it. Im running the method / executing
line(katz_deli)
# line(other_deli)



def take_a_number(line, customer)
  line.push(customer)
  puts "Welcome, #{customer}. You are number #{line.length} in line."
end

def now_serving(customers)
  if customers.empty?
    puts "There is nobody waiting to be served!"
  else
    served_customer = customers.shift
    puts "Currently serving #{served_customer}."
    # puts "Currently serving #{array.first}." # it is retreiving the first element in the array. index 0 
    # array.shift # shift is an array method. it removes the first element of the array
  end
end

puts "take_a_number"
now_serving(other_deli)

