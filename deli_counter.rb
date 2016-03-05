# Write your code here.
def line(customers)
  count = 1
  if customers.size == 0
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    customers.each do |x|
      name = x 
      string.concat(" #{count}. #{name}")
      count += 1
    end
    puts string
  end
end

def take_a_number(customers, name)
  customers.push(name)
  position = customers.size
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(customers)
  if customers.size == 0
    puts "There is nobody waiting to be served!"
  else
    name = customers.shift
    puts "Currently serving #{name}."
  end
end