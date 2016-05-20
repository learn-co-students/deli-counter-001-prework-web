# Write your code here.

def line(the_line)
  if the_line.empty?                                        
    puts "The line is currently empty."
  else
    # an array to track the customer and position together
    customer_position = []  
    the_line.each_with_index { |customer, position|

      # add "1. Henry" to customer_position array
      customer_position.push( "#{position + 1}. #{customer}") 
    }
    puts "The line is currently: " + customer_position.join(" ") 
  end
end 


def take_a_number(line, customer) 
  line.push(customer)
  puts "Welcome, #{customer}. You are number #{line.length} in line."
end


def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    served_customer = line.shift
    puts "Currently serving #{served_customer}."
  end
end
