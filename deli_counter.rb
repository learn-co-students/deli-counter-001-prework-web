# Write your code here.

katz_deli = []

def line(katz_deli)
  if katz_deli.empty? == true
    puts "The line is currently empty."
  elsif katz_deli.empty? == false
    other_deli = Array.new
    for name in katz_deli
      idx = katz_deli.index(name) + 1
      position = "#{idx}. #{name}"
      other_deli.push(position)
    end
    puts "The line is currently: #{other_deli.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push("#{name}")
  index = katz_deli.index(name)
  index += 1
  puts "Welcome, #{name}. You are number #{index} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? == false
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end


# name = ["arvin", "shiela", "may", "sanmiguel", "lachica"]
# katz_deli = []
# for x in name 
#   idx = name.index(x) + 1
#   new_name = "#{idx}. #{x}"
#   katz_deli.push(new_name)
# end








