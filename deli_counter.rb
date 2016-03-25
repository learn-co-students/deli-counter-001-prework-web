def line(in_line)
  if in_line.count < 1
    puts "The line is currently empty."
  else
    customers = "The line is currently:"
    in_line.each_with_index do |customer, index|
      index += 1
      customers << " #{index}. #{customer}"
    end
    puts customers
  end
end

def take_a_number(in_line, customer)
  number = in_line.count + 1
  in_line << customer
  puts "Welcome, #{customer}. You are number #{number} in line."
end

def now_serving(in_line)
  if in_line.count < 1
    puts "There is nobody waiting to be served!"
  else
    customer = in_line.shift
    puts "Currently serving #{customer}."
  end
end


















# katz_deli = []

# def take_a_number(katz_deli, name)
#   katz_deli.push(name)
#   position = katz_deli.index(name)
#   puts"Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."

#   return name, position
# end

#   def line(katz_deli)
#  if katz_deli.empty? == false
#    katz_deli.each_with_index do|value,index|

#      puts "The line is currently: #{index+1}. #{value}"

#      elsif katz_deli.empty? == true
#   puts "The line is currently empty."
#  end

# end


# def now_serving (katz_deli)
#   if katz_deli.empty? == true
#     puts"There is nobody waiting to be served!"
#   elsif katz_deli.empty? == false

#     puts "Currently serving #{katz_deli.first}."
#   katz_deli.shift
#  end
#   puts "The line is currently empty."
#   end
# end
# end

# def deli_counter
#   katz_deli =[]
# end

# def take_a_number(katz_deli, name)
#   #line.push(name) && "#{line.size}: #{name}
#   if katz_deli.index(name).nil?
#     katz_deli << name
#   end
#   [name, katz_deli.index(name) + 1]
# end


# def line(names)
#   if names.empty?
#     puts "The line is currently empty."
  
#   end  
# end  

# # Write your code here.
