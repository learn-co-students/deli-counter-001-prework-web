# Write your code here.
def line(deli)
  if deli.empty? #this conditional checks whether line is empty
    puts "The line is currently empty." #
  else
    current_line = "The line is currently:" 
    deli.each.with_index(1) do |person, i| # calls .each and .with_index with and argument methods on deli and iterate over each element
      current_line << " #{i}. #{person}" # wraps i and person variables for string interpolation and writes it in to current_line
    end
    puts current_line 
  end
  
end

def take_a_number(deli, name)
  number = deli.length + 1 # line starts from 1
  deli << name # shovels new name to the array
  puts "Welcome, #{name}. You are number #{number} in line." # welcomes the new customer and shows their number in the line
  
end

def now_serving(deli)
  if deli.length == 0 #checks if the line is empty
    puts "There is nobody waiting to be served!"
  else
    name = deli.shift #assign the first person to the name variable and removes them from the line
    puts "Currently serving #{name}." # wraps name variable for string interpolation to show the person being served
  end
end



def get_a_number(queue)
  if queue.length == 1
    number = queue[0]
    queue = []
    return queue
  end


  if queue.empty? 
    queue << 1
  else
    queue << queue.last + 1
  end
  queue.last
end

def serve_customer(queue)
  if queue.length == 1
    get_a_number(queue)
  end
  queue.shift
end

