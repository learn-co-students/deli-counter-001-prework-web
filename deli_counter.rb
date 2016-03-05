katz_deli = []
def line(katz_deli)
  if katz_deli.size == 0
  puts "The line is currently empty."
    else
    intro = "The line is currently:"
    katz_deli.each_with_index {|name, index| intro += " #{index+1}. #{name}"}
    puts intro
  end
end
def take_a_number(katz_deli, name)
  if katz_deli.size == 0
    katz_deli.unshift(name)
       puts "Welcome, #{name}. You are number 1 in line."
    elsif
    katz_deli.size != 0
    katz_deli.push(name)
       puts "Welcome, #{name}. You are number 4 in line."
   else
  end
end
 def now_serving(katz_deli)
   if katz_deli.size == 0
   puts "There is nobody waiting to be served!"
     elsif
     katz_deli.size != 0
     katz_deli.shift
       puts "Currently serving #{name}."
   end
 end

def now_serving(katz_deli)
if katz_deli.size == 0
puts "There is nobody waiting to be served!"
else puts "Currently serving #{katz_deli.first}."
katz_deli.shift
  end
 end
