katz_deli = [] #create an empty list for katz
def line(katz_deli) #def the method to check the line and see who's on it
  if katz_deli.size == 0 then #Check the length of the array using .size katz_deli to check for customers
    puts "The line is currently empty." #None? ok then output this
    else #or if there is someone online
    line = katz_deli.each_with_index.collect {|name, index| "#{index + 1}. #{name}"}

    puts "The line is currently: #{line.join(" ")}"
  end
  end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
end

def now_serving(deli)
  if deli == [] then
    puts "There is nobody waiting to be served!"
    else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
  end

