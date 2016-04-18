katz_deli = ["Joe", "Bill"] #array for current line of people

def line(katz_deli)
  if katz_deli.empty? == true
    puts "The line is currently empty."
  else
  current_line = "The line is currently:"
  katz_deli.each_with_index do |name,index|
      index += 1
    current_line += " #{index}. #{name}"
    end
    puts current_line
  end
end


def take_a_number(katz_deli, name)
  katz_deli.push(name)
  number = katz_deli.index(name) + 1
  puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(katz_deli)
    #if katz_deli.length == 0
    #puts "There is nobody waiting to be served!"
    #else
    #puts "Currently serving #{katz_deli.shift}."
      #end
    
    if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
    else
    i = katz_deli.shift
    puts "Currently serving #{i}."
    end
end