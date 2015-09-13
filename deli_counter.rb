# Write your code here.
def line(line)
  line.empty? ? puts("The line is currently empty.") : print_line(line)
end

def print_line(line)
  line_text = "The line is currently:"
  line.each_with_index do |name, index|
    line_text << " #{index+1}. #{name}"
  end
  puts line_text
end

def take_a_number(line, name)
  line.push name
  puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(line)
  line.empty? ? puts("There is nobody waiting to be served!") : puts("Currently serving #{line.shift}.")
end



# def line(line)
#   # line variable is empty 
#    line.empty? ? puts("The line is currently empty.") : print_line(line)
# end

# def print_line(line)
#   line_text = "The line is currently:"
#   line.each_with_index do |name,index|
#    line_text << "#{index+1}. #{name}"
 
#   end
#   puts line_text 
# end


# def take_a_number(line,name)
#    line.push name
# puts "Welcome, #{name}. You are number #{line.size} in line."
# end

# def now_serving(line)
  
#   line.empty? ? puts("There is nobody waiting to be served!") : puts("Currently serving #{line.shift}.")
# end











# katz_deli = []
# def take_a_number(katz_deli,string)
#   katz_deli.push(string)
#   puts "Welcome, #{string}. You are number #{katz_deli.length} in line."
# end

# def line(katz_deli)
#    if katz_deli.length > 0
#     line = "The line is currently"
#       (1..katz_deli.length).each do | position|
#         line += " #{position}. #{katz_deli[position-1]}"
#       end
#      else
#        puts "The line is currently empty."
#     end
#   end


#   def now_serving(katz_deli)
#    if katz_deli.length == 0
    
#   puts "There is nobody waiting to be served!"
# else
#   currentPatron = katz_deli.shift
#   puts "Currently serving #{currentPatron}."
#   end
# end





