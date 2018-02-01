katz_deli = []

def line(customer_list)
  base_string = "The line is currently:"

  if customer_list == []
    puts "The line is currently empty."
  else
    customer_list.each_with_index do |customer, index| 
      base_string = "#{base_string} #{index+1}. #{customer}"
    end
    puts base_string
  end
    #"The line is currently: 1. Grace 2. Kent"
end



def take_a_number(customer_list, customer)
  customer_list << customer
  position = customer_list.index(customer) + 1

  puts "Welcome, #{customer}. You are number #{position} in line."
end


def now_serving(customer_list)
  if customer_list == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customer_list[0]}."
    customer_list.shift
  end
end


# def line(deli_line)

# hash = Hash.new
#   deli_line.each_with_index { |name, index|
#     hash[index] = index
#   }
#   return other_deli

#   # if deli_line == nil
#   #   puts "The line is currently empty."
#   # else 
#   #   deli_line.each do |name|
#   #     puts "The line is currently: 1. #{name} 2. #{name} 3. #{name}"
#   #   if deli_line == nil
#   #     puts "The line is currently empty."
#   # end
# end

# # line(katz_deli)
# # line(other_deli)
# # # def line
# #   puts "The line is currently empty."
# # # end

# # def line(katz_deli)

# #store new info in  other_deli variable

#   # katz_deli.each do |name|
#   #   if katz_deli.empty?
#   #     puts "The line is currently empty."

# # other_deli = Hash.new
# #   katz_deli.each_with_index { |name, index|
# #     hash[index] = index
# #   }
# #   puts other_deli
# # end

# # katz_deli = []
# def take_a_number(array, name)
#   position = 1
#   position = position + 1
  
#   katz_deli.push(name)
#     if katz_deli == nil
#       puts "Welcome, #{name}. You are number #{position} in line."
#     else 
#       puts "Welcome, #{name}. You are number #{position} in line."
#     end
#   # array.unshift(name)
#   # position = array.index(name)
#   # return position += 1
# end
      


  # hash = Hash.new
  #   katz_deli.each_with_index { |name, index|
  #     hash[index] = index
  #   }
  #   return position_in_line


# take_a_number(katz_deli, "Jane")

#   katz_deli += katz_deli.push(name)
#   katz_deli.index(name)
#     returns
#     # puts "Welcome, #{name}. You are number in line."
  
#   #katz_deli = current length of line
#   #this method adds name (string) to end of array (katz_deli) 
#   #and returns person's (rep. by name) position in the line 
#   #arrays begin with 0, so be sure to add 1 to get position
# end


# def now_serving
  
# end

# #line
#     there is nobody in line
#       should say the line is empty (FAILED - 1)
#     there are people in line
#       should display the current line (FAILED - 2)
#   #take_a_number
#     there is nobody in line
#       should add a person to the line (FAILED - 3)
#     there are already people in line
#       should add a person to the end of the line (FAILED - 4)
#     adding multiple people in a row
#       should correctly build the line (FAILED - 5)
#   #now_serving
#     there are no people in line
#       should say that the line is empty (FAILED - 6)
#     there are people in line
#       should serve the first person in line and remove them from the queue (FAILED - 7)
