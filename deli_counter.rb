# Write your code here.
def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    response = "The line is currently: "
    katz_deli.each_with_index do |name, index|
      response << "#{index+1}. #{name} "
    end
    puts response
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  pos = katz_deli.size()
  puts "Welcome, #{name}. You are number #{pos} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    next_customer = katz_deli.shift
    puts "Currently serving #{next_customer}."
  end
end
