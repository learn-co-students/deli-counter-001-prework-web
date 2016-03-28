

def line(customer)
if customer.count == 0
  puts "The line is currently empty."
else 
full_line = "The line is currently:"
  customer.each_with_index {|x,index| full_line<< (" #{index+1}. #{x}")}
  puts full_line 
end
end
 def take_a_number(customer, person)
   customer.push(person)
     greeting=[]
   customer.each_with_index do|name, index|
      greeting = "Welcome, #{name}. You are number #{index + 1} in line."
      end  
      puts greeting
 end
def now_serving(customer)
  name=customer.shift
  if customer.count ==0
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{name}."
  end
end


