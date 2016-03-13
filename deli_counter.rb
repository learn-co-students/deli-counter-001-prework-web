# Write your code here.
def line(customers)
  line_info = ""
  if customers.size == 0
    line_info = "The line is currently empty."
  else
    line_info = "The line is currently:"
    customers.each {|c| line_info.concat(" #{customers.index(c) + 1}. #{c}")}
  end
  puts line_info
end

def take_a_number(customers, name)
  customers.push(name)
  puts "Welcome, #{name}. You are number #{customers.index(name) + 1} in line."
end

def now_serving(customers)
  if customers.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customers.first}."
    customers.delete(customers.first)
  end
end

