def line(katz_deli)
   empty_deli = "The line is currently empty."
   busy_deli = "The line is currently:"

   if katz_deli.empty?
    puts empty_deli
   else
      katz_deli.each_with_index do |value, index|
         busy_deli << " #{index+1}. #{value}"
     end
     puts busy_deli
   end

end

def take_a_number(customers_inline, new_customer)

  customers_inline << new_customer
  customer_number = customers_inline.index(new_customer) + 1

  puts "Welcome, #{new_customer}. You are number #{customer_number} in line."

end


def now_serving(customers_inline)

  if customers_inline.empty?
    puts "There is nobody waiting to be served!"
  else
    customer_infront = customers_inline.shift
    puts "Currently serving #{customer_infront}."
  end

end




