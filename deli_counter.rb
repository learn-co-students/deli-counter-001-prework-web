# Write your code here.
def line (katz_deli)
   message = ''
   if katz_deli.count == 0 
	message = "The line is currently empty."
   else
        message = "The line is currently: "
	katz_deli.each do |customer|
	  customer_position = katz_deli.index(customer) + 1
	  message += customer_position.to_s + '. ' + customer 
          if customer_position < katz_deli.size
 	    message += ' '
	  end
        end
   end
   puts message
end

def take_a_number(katz_deli, customer_name)
  katz_deli.push(customer_name)
  customer_position = katz_deli.index(customer_name) + 1
  puts "Welcome, #{customer_name}. You are number #{customer_position} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    message = "There is nobody waiting to be served!"
  else
    current_customer = katz_deli.shift()
    message = "Currently serving #{current_customer}."
  end  
  puts message
end
