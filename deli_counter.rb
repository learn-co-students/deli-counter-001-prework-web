
def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    line_list = "The line is currently:"

    katz_deli.each_with_index do |name, index|
    line_list<< " #{index.to_i+1}. #{name}"
    end
    puts line_list
  end
end 


def take_a_number(katz_deli, name)
  katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."   
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end


####ALTERNATIVE SOLUTION
# def line(katz_deli)
#   if katz_deli.size == 0 
#     puts "The line is currently empty."
#   else
#     line_list = "The line is currently:"
#     katz_deli.each_with_index do |name, index|
#       line_list.concat(" #{index.to_i + 1}. #{name}")
#       end
#     puts line_list
#   end
# end

# def take_a_number(katz_deli, new_person)
#   katz_deli.push(new_person)
#   puts "Welcome, #{new_person}. You are number #{katz_deli.length} in line."
# end 

# def now_serving(katz_deli)
#   if katz_deli.size == 0
#     puts "There is nobody waiting to be served!"
#   else 
#     puts "Currently serving #{katz_deli[0]}."
#     katz_deli.shift   
#   end
# end