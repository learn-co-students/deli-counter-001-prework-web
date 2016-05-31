katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]

def line(array)
  if array != []
   customers_line = array.each_with_index.map {|x, y|  "#{y+1}. #{x}"} * " "
   puts "The line is currently: #{customers_line}"
   elsif array == []
    puts "The line is currently empty."
    end
end
line(other_deli)

def take_a_number(array, string)
  array.push(string)
  customer_ticket_num = array.each_with_index.map{|x, y| "Welcome, #{x}. You are number #{y+1} in line."}
  puts customer_ticket_num.last

end 
take_a_number(katz_deli, "Ada")
take_a_number(other_deli, "Grace")

other_deli = ["Logan", "Avi", "Spencer"]

def now_serving(array)
  if array != []
    serving_customer = array.each {|x| "#{x}"}
    customer_served = serving_customer.shift
    puts "Currently serving #{customer_served}."
    serving_customer  

  elsif array == []
    puts "There is nobody waiting to be served!"
  end
end
now_serving(other_deli)