# Array that represents deli queue 
# Empty at the beginning of the day

katz_deli = []

def take_a_number(current_queue, new_customer)
  current_queue << new_customer  # push new_customer to current_queue array

  # Our assumption is the person taking a number will
  # always be last in line at this point in time.

  puts "Welcome, #{new_customer}. You are number #{current_queue.size} in line."

  # We could also write the customer position as follows: "current_queue.index(new_customer) + 1"
  # However, that might not work if two people have the same name

end

def now_serving(current_queue)
  if current_queue.size == 0 # Check if queue is empty
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_queue.shift}." # Simultaneously remove from queue and output
  end
end

def line(current_queue)
  if current_queue.size == 0 # Check if queue is empty
    puts "The line is currently empty."
  else
    str = "The line is currently:" # Instantiate beginning of string
    current_queue.each_with_index do |name, index| # Use "each_with_index" method to include counter
      str += " #{index + 1}. #{name}"
    end
    puts str
  end
end