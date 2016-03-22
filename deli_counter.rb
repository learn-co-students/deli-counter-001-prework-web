katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0 #Comparison operator sets empty line equal to 0 to be true
    puts "The line is currently empty."
  else
    new_line = "The line is currently:" #String to be updated with shovel of new index number/customer
    katz_deli.each_with_index do |name, index| #Calls each_with_index method on katz_deli with two arguments
    new_line << " #{index + 1}. #{name}" #Employs shovel method to add new index number/customer in new_line
    end
    puts new_line #Outputs updated customer line
  end
end

def take_a_number(katz_deli, new_customer) #Two arguments, current line and name of new customer
  katz_deli << new_customer #Employs shovel method to add new customer in line array
  updated_number = katz_deli.index(new_customer) #Calls index method on katz_deli to confirm new_customer index number
  puts "Welcome, #{new_customer}. You are number #{updated_number + 1} in line." #Outputs welcome string with new custo   mer name/line number
end

def now_serving(katz_deli)
  if katz_deli.length >= 1 #Conditional to be true if line has one or more customers
    puts "Currently serving #{katz_deli.shift}." #Outputs updated line by employing shift method to remove first custom     er from current list
  else katz_deli.length == 0 #Conditional set to be true if line is empty
    puts "There is nobody waiting to be served!"
  end
end

def get_a_number(queue)
  if queue.empty?
    queue << 1
  else
    queue << queue.last + 1
  end
  return queue.last
end

def serve_customer(queue)
  if queue.length > 1
    queue.shift - 2
  else
     queue << queue.length
  end
  return queue.size
end

