#katz_deli = []
#
#def line(customers)
#  katz_deli = []
#  if customers.size == 0
#    puts "The line is currently empty."
#    end
#  else
#    line_string = "The line is currently: "
#    customers.each_with_index do |n,index| print katz_deli << "#{index + 1}" ". " "#{n}"
#    puts "#{line_string} #{katz_deli}"
#  end
#end
#
##customers = ["becky", "dad", "donna"]
##line(customers)
##--------------------------------------------
##  def line(katz_deli)
## if katz_deli.empty? == false
##   katz_deli.each_with_index do|value,index|
##
##     puts "The line is currently: #{index+1}. #{value}"
## end
##     elsif katz_deli.empty? == true
##  puts "The line is currently empty."
## end
##end
##---------------------------------------------
#
##
#def take_a_number(katz_deli, name)
#  your_number = []
#  name.each_with_index { |n,index| print your_number << "#{index + 1}" "#{n}" }
#  #puts "#{name} katz_deli.last"
#
#  #name.each_with_index { |n,index| print your_number << "#{index + 1}" "#{n}" }
#
#end
#
#
#
##.shift removes from the front of an array
## << adds item to the end of an array
##
##
##def now_serving
## katz_deli = your_number + katz_deli.flatten
##end
##
#
#---------------------------------------------------
katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    katz_deli.each_with_index{|value, index| string << " #{index + 1}. #{value}"}
    puts string
  end
end

def take_a_number(katz_deli, new_person)
    katz_deli.push(new_person)
    puts "Welcome, #{new_person}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

#def get_a_number(queue)
#  new_person = []
#  queue.push(new_person)
#end
